from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(response): 
    return HttpResponse(
        "Hello, this is overview. There's nothing here, but i'll gladly share my space with you."
    )
