from urllib import request
from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpRequest
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import UserCreationForm


def login(response):
    if response.method == 'GET':
        return render(response, "auth/auth_login.html")
    if response.method == 'POST':
        return render(response, "auth/auth_lupa_password.html")


def register(response):
    if response.method == 'POST':
        form = UserCreationForm(response.POST)
        if form.is_valid():
            form.save()
            return redirect("login")
    else:
        form = UserCreationForm()

    return render(response, 'auth/auth_register.html', {"form": form}) 



def lupaPassword(response):

    return render(response, "auth/auth_lupa_password.html")


def resetPassword(response):

    return render(response, "auth/auth_reset_password.html")
