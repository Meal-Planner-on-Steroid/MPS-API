from django.urls import path
from .views import user_view, aktivitas_view, kebutuhan_gizi_view


urlpatterns = [
    path('user', user_view.userController),
    path('aktivitas', aktivitas_view.getData),
    path('kebutuhan-gizi', kebutuhan_gizi_view.kebutuhanGiziController),
]
