from django.shortcuts import render
from django.http import HttpResponse
from base.models import User

# Create your views here.
def index(response, id):
    user = User.objects.get(id=id)
    
    return render(response, "base/admin_user_home.html", {"user": user})

def getUser(response, id):
    user = User.objects.get(id=id)
    
    return HttpResponse("%s" % user.name)
