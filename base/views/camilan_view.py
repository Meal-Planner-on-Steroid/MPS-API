from django.shortcuts import render
from django.http import HttpResponse
from base.models import User

# Create your views here.
def index(response):
    
    return render(response, "base/admin_camilan.html")

def add(response):
    
    return render(response, "base/admin_camilan_add.html")

def detail(response):
    
    return render(response, "base/admin_camilan_detail.html")
