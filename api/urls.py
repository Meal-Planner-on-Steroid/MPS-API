from django.urls import path
from .views import user_view, aktivitas_view, kebutuhan_gizi_view, generate_rekomendasi_menu_view


urlpatterns = [
    # Database end-points
    # # Anthing about user
    # # # User
    path('user', user_view.userController),
    # # # Tingkat aktivitas
    path('aktivitas', aktivitas_view.index),
    path('aktivitas/<int:id>', aktivitas_view.show),
        
    # Algorithm end-points
    path('kebutuhan-gizi', kebutuhan_gizi_view.kebutuhanGiziController),
    path('generate-rekomendasi-menu', generate_rekomendasi_menu_view.generateRekomendasiController),
]
