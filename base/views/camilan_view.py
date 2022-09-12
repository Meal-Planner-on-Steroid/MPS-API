from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseNotFound
from django.contrib.auth.models import User
from base.models import Makanan, Satuan, MakananFoto, BahanMakanan
from django.core.paginator import Paginator
from django.contrib import messages
import logging

# Create your views here.


def index(response):

    if response.method == 'GET':
        camilans = Makanan.objects.all().order_by(
            'id').select_related('besar_porsi').filter(jenis='CA')
        return_var = {}

        if 'cari' in response.GET:
            camilans = camilans.filter(
                nama__contains=response.GET['cari'])
            return_var['cari'] = response.GET['cari']

        paginator = Paginator(camilans, 10)

        page_number = response.GET.get('page')
        page_obj = paginator.get_page(page_number)
        return_var['page_obj'] = page_obj

        return render(response, "base/admin_camilan.html", return_var)

    if response.method == 'POST':
        body = response.POST
        try:
            camilan = Makanan.objects.get(id=body['id'])

            camilan.energi = body['energi']
            camilan.protein = body['protein']
            camilan.lemak = body['lemak']
            camilan.karbo = body['karbo']

            camilan.save()

            messages.add_message(response, messages.SUCCESS,
                                 'Berhasil update data camilan')
            return redirect('camilan-index')

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect('camilan-index')


def create(response):
    if response.method == 'GET':
        return_var = {}
        satuan_porsis = Satuan.objects.all().order_by('nama')

        return_var['satuan_porsis'] = satuan_porsis

        return render(response, "base/admin_camilan_add.html", return_var)

    if response.method == 'POST':
        body = response.POST
        try:
            satuan = Satuan.objects.filter(id=body['besar_porsi']).get()

            makanan = Makanan(
                nama=body['nama'],
                porsi=body['porsi'],
                besar_porsi=satuan,
                berat_porsi=body['berat_porsi'],
                kelompok=body['kelompok'],
                sumber=body['sumber'],
                energi=body['energi'],
                lemak=body['lemak'],
                karbo=body['karbo'],
                protein=body['protein'],
                jenis='CA'
            )

            makanan.save()

            files_lenght = body['files_lenght']

            for file_num in range(0, int(files_lenght)):
                makanan_foto = MakananFoto(
                    makanan=makanan,
                    foto=response.FILES.get(f'foto_makanan_{file_num}')
                )

                makanan_foto.save()

            return HttpResponse("Berhasil menambahkan data")

        except Exception as e:
            return HttpResponse(e)


def show(response, id):
    if response.method == 'GET':
        makanan = Makanan.objects.filter(id=id).get()
        satuan_porsis = Satuan.objects.all().order_by('nama')
        makanan_fotos = MakananFoto.objects.all().order_by(
            'id').filter(makanan_id=makanan.id)        
        makanan_terkaits = BahanMakanan.objects.all().filter(menu_makanan_id=id).select_related('bahan_makanan', 'satuan')

        return_var = {}

        return_var['makanan_terkaits'] = makanan_terkaits
        return_var['makanan'] = makanan
        return_var['satuan_porsis'] = satuan_porsis
        return_var['makanan_fotos'] = makanan_fotos

        return render(response, "base/admin_camilan_detail.html", return_var)

def update(response, id):
    if response.method == 'POST':
        body = response.POST

        if body['part'] == 'keterangan':
            try:
                camilan = Makanan.objects.get(id=id)
                satuan = Satuan.objects.filter(id=body['besar_porsi']).get()

                camilan.nama=body['nama']
                camilan.porsi=body['porsi']
                camilan.besar_porsi=satuan
                camilan.berat_porsi=body['berat_porsi']
                camilan.kelompok=body['kelompok']
                camilan.sumber=body['sumber']

                camilan.save()

                messages.add_message(response, messages.SUCCESS, 'Berhasil update informasi camilan')
                return redirect('camilan-detail', id=id)

            except BaseException as e:
                messages.add_message(response, messages.ERROR, e)
                logging.exception("Terjadi masalah")
                return redirect('camilan-detail', id=id)

        if body['part'] == 'kandungan':
            try:
                camilan = Makanan.objects.get(id=id)

                camilan.energi = body['energi']
                camilan.protein = body['protein']
                camilan.lemak = body['lemak']
                camilan.karbo = body['karbo']

                camilan.save()

                messages.add_message(response, messages.SUCCESS, 'Berhasil update kandungan gizi camilan')
                return redirect('camilan-detail', id=id)

            except Exception as e:
                messages.add_message(response, messages.ERROR, e)
                return redirect('camilan-detail', id=id)

        if body['part'] == 'foto':
            try:
                makanan = Makanan.objects.get(id=id)

                files_lenght = body['files_lenght']

                for file_num in range(0, int(files_lenght)):
                    makanan_foto = MakananFoto(
                        makanan=makanan,
                        foto=response.FILES.get(f'foto_makanan_{file_num}')
                    )

                    makanan_foto.save()

                messages.add_message(response, messages.SUCCESS, 'Berhasil menambakan foto camilan')
                return redirect('camilan-detail', id=id)

            except Exception as e:
                messages.add_message(response, messages.ERROR, e)
                return redirect('camilan-detail', id=id)


def destroy(response, id):
    if response.method == "POST":
        try:
            Makanan.objects.filter(id=id).delete()
            messages.add_message(response, messages.SUCCESS,
                                 'Berhasil menghapus camilan')
            return redirect('camilan-index')

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect('camilan-index')

    else:
        return HttpResponseNotFound("Route does not exist")
    
def destroyFoto(response, id, foto_id):
    if response.method == "POST":
        try:
            MakananFoto.objects.filter(id=foto_id, makanan_id=id).delete()
            messages.add_message(response, messages.SUCCESS,
                                 'Berhasil menghapus foto camilan')
            return redirect('camilan-detail', id=id)

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect(response.POST['next'], id=id)

    else:
        return HttpResponseNotFound("Route does not exist")
