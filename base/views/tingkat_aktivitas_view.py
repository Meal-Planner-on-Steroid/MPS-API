from django.shortcuts import render
from django.http import HttpResponse
from base.models import User

# Create your views here.
def index(response):
    
    return render(response, "base/tingkat_aktivitas.html")
