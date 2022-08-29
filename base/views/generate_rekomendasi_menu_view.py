from django.shortcuts import render
from django.http import HttpResponse
from base.models import User

# Create your views here.
def index(response):
    
    return render(response, "base/generate_rekomendasi_menu.html")

def hasil(response):
    
    return render(response, "base/generate_rekomendasi_menu_hasil.html")
