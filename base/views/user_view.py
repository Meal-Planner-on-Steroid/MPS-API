import imp
from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseNotFound
from base.models import RiwayatRekomendasiRencanaDiet, User
from django.core.paginator import Paginator
from django.contrib.auth.models import User
from django.contrib import messages
from django.db.models import Exists

# Create your views here.


def index(response):
    if response.method == 'GET':
        end_users = User.objects.all().exclude(is_superuser=1).order_by(
            'id').values('id', 'email', 'username')
        return_var = {}

        if 'cari' in response.GET:
            end_users = end_users.filter(
                username__contains=response.GET['cari'])
            return_var['cari'] = response.GET['cari']

        paginator = Paginator(end_users, 10)

        page_number = response.GET.get('page')
        page_obj = paginator.get_page(page_number)
        return_var['page_obj'] = page_obj

        return render(response, "base/admin_user.html", return_var)

    if response.method == 'POST':
        body = response.POST
        try:
            end_user = User.objects.get(id=body['id'])

            end_user.email = body['email']
            end_user.is_staff = body['is_staff']

            end_user.save()

            messages.add_message(response, messages.SUCCESS,
                                 'Berhasil update data pengguna')
            return redirect('user-index')

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect('user-index')


def create(response):
    if response.method == "GET":
        return render(response, "base/admin_user_add.html")

    if response.method == "POST":
        body = response.POST

        try:
            thingToInsert = User(
                first_name=body['first_name'],
                last_name=body['last_name'],
                email=body['email'],
                username=body['username'],
                password=body['password'],
                is_staff=False if 'is_staff' not in body else body['is_staff']
            )

            thingToInsert.save()

            messages.add_message(
                response, messages.SUCCESS, 'Berhasil menambah pengguna %s' % body['username'])
            return redirect('user-index')

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect('user-add')


def show(response, id):
    if response.method == 'GET':
        end_user = User.objects.filter(id=id).get()
        rrr_diets = RiwayatRekomendasiRencanaDiet.objects.filter(
            user_id=end_user.id)

        return render(response, "base/admin_user_detail.html", {'end_user': end_user, "rrr_diets": rrr_diets})


def update(response, id):
    if response.method == 'POST':
        body = response.POST
        try:
            end_user = User.objects.get(id=id)

            end_user.first_name = body['first_name']
            end_user.last_name = body['last_name']
            end_user.email = body['email']
            end_user.username = body['username']
            end_user.is_staff = body['is_staff']

            end_user.save()

            messages.add_message(response, messages.SUCCESS,
                                 'Berhasil update data pengguna')
            return redirect('user-detail', id=id)

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect('user-detail', id=id)


def destroy(response, id):
    if response.method == "POST":
        try:
            User.objects.filter(id=id).delete()
            messages.add_message(response, messages.SUCCESS,
                                 'Berhasil menghapus pengguna')
            return redirect('user-index')

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect('user-index')

    else:
        return HttpResponseNotFound("Route does not exist")


def showRiwayat(response, id, riwayat_id):
    if response.method == 'GET':
        end_user = User.objects.filter(id=id).get()
        rrr_diet = RiwayatRekomendasiRencanaDiet.objects.filter(id=riwayat_id).get()

        return render(response, "base/admin_user_detail_riwayat_menu.html", {"rrr_diet": rrr_diet, 'end_user': end_user})

    if response.method == 'POST':
        try:
            rrr_diet = RiwayatRekomendasiRencanaDiet.objects.filter(id=riwayat_id, user_id=id)
            end_user_id = rrr_diet.get().user_id
            rrr_diet.delete()

            messages.add_message(response, messages.SUCCESS,
                                 'Berhasil menghapus riwayat')
            return redirect('user-detail', id=end_user_id)

        except Exception as e:
            messages.add_message(response, messages.ERROR, e)
            return redirect('user-detail', id=end_user_id)
