from django.shortcuts import render
from django.http import HttpResponse
from base.models import User

# Create your views here.
def index(response):
    return HttpResponse("This is user panel")

def getUser(response, id):
    user = User.objects.get(id=id)
    
    return HttpResponse("%s" % user.name)
