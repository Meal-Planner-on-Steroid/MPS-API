from django.shortcuts import render
from django.http import HttpResponse
from base.models import User

# Create your views here.
def index(response):
    
    return render(response, "base/admin_user.html")

def add(response):
    
    return render(response, "base/admin_user_add.html")

def detail(response):
    
    return render(response, "base/admin_user_detail.html")

def detailRiwayat(response):
    
    return render(response, "base/admin_user_detail_riwayat_menu.html")

def getUser(response, id):
    user = User.objects.get(id=id)
    
    return HttpResponse("%s" % user.name)
