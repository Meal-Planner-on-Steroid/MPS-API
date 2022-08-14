import imp
from django.urls import path
from .views import user_view, aktivitas_view

urlpatterns = [
    path('user', user_view.userController),
    path('aktivitas', aktivitas_view.getData),
]

