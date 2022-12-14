from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseNotFound
from django.contrib.auth.models import User
from base.models import BahanMakanan, Makanan, Satuan
from django.contrib import messages

def create(response, id):
    if response.method == 'GET':
        return_var = {}
        makanan = Makanan.objects.get(id=id)
        
        makanans = Makanan.objects.all().order_by(
            'id').values('id', 'nama')
        
        if makanan.jenis == 'BA':
            makanans = makanans.exclude(jenis=makanan.jenis)
        else:
            makanans = makanans.filter(jenis='BA')
        
        satuan_berats = Satuan.objects.all().order_by('nama')

        return_var['makanan_id'] = makanan.id
        return_var['makanans'] = makanans
        return_var['satuan_berats'] = satuan_berats

        return render(response, "base/admin_makanan_terkait_index.html", return_var)

    if response.method == 'POST':
        body = response.POST
        try:
            menu_makanan = Makanan.objects.get(id=id)
            bahan_makanan = Makanan.objects.get(id=body['makanan_terkait'])
            satuan = ''
            makanan_terkait = BahanMakanan(
                menu_makanan=menu_makanan,
                bahan_makanan=bahan_makanan,
            )
            
            if menu_makanan.jenis == 'BA':
                makanan_terkait = BahanMakanan(
                    menu_makanan=bahan_makanan,
                    bahan_makanan=menu_makanan,
                )
            
            if body['berat'] != '' or body['satuan'] != '':
                satuan = Satuan.objects.filter(id=body['satuan']).get()
                
                makanan_terkait = BahanMakanan(
                    menu_makanan=menu_makanan,
                    bahan_makanan=bahan_makanan,
                    satuan=satuan,
                    berat=body['berat']
                )

            makanan_terkait.save()

            messages.add_message(
                response, messages.SUCCESS, 'Berhasil menambah makanan terkait')
            return redirect(body['next'], id=id)

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect('makanan-terkait-index', id=id)

def destroy(response, id, makanan_terkait_id):
    if response.method == "POST":
        try:
            BahanMakanan.objects.filter(id=makanan_terkait_id).delete()
            messages.add_message(response, messages.SUCCESS,
                                 'Berhasil menghapus makanan terkait')
            return redirect(response.POST['next'], id=id)

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect(response.POST['next'], id=id)

    else:
        return HttpResponseNotFound("Route does not exist")