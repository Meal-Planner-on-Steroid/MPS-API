from django.shortcuts import render
from django.http import HttpResponse
from base.models import User

# Create your views here.
def login(response):
    
    return render(response, "base/admin_auth_login.html")

def lupaPassword(response):
    
    return render(response, "base/admin_auth_lupa_password.html")

def resetPassword(response):
    
    return render(response, "base/admin_auth_reset_password.html")

