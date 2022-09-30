from django.urls import path
from .views import (
    user_view, 
    aktivitas_view, 
    kebutuhan_gizi_view, 
    generate_rekomendasi_menu_view, 
    makanan_view, 
    makanan_terkait_view,
    satuan_view,
)


urlpatterns = [
    # Database end-points
    # # Anthing about user
    # # # User
    path('user', user_view.userController),
    # # # Tingkat aktivitas
    path('aktivitas', aktivitas_view.index),
    path('aktivitas/<int:id>', aktivitas_view.show),
    # # Makanan
    path('makanan', makanan_view.index),
    path('makanan/new/', makanan_view.create),
    path('makanan/<int:id>', makanan_view.show),
    path('makanan/<int:id>/update', makanan_view.update),
    path('makanan/<int:id>/delete', makanan_view.destroy),
    # # # Makan terkait (Bahan makanan / Menu makanan)
    path('makanan/<int:id>/makanan-terkait', makanan_terkait_view.index),
    # # # Satuan makanan -> Satuan makanan didapat dari data set
    path('satuan', satuan_view.index),
    path('satuan/<int:id>', satuan_view.show),

    # Algorithm end-points
    path('kebutuhan-gizi', kebutuhan_gizi_view.kebutuhanGiziController),
    path('generate-rekomendasi-menu',
         generate_rekomendasi_menu_view.generateRekomendasiController),
]
