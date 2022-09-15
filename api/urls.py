from django.urls import path
from .views import user_view, aktivitas_view, kebutuhan_gizi_view, generate_rekomendasi_menu_view


urlpatterns = [
    # Database end-points
    path('user', user_view.userController),
    path('aktivitas', aktivitas_view.getData),
    
    # Algorithm end-points
    path('kebutuhan-gizi', kebutuhan_gizi_view.kebutuhanGiziController),
    path('generate-rekomendasi-menu', generate_rekomendasi_menu_view.generateRekomendasiController),
]
