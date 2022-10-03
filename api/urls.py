from django.urls import path
from .views import (
    riwayat_rekomendasi_rencana_diet_view,
    user_view,
    user_profile_view,
    aktivitas_view, 
    kebutuhan_gizi_view, 
    generate_rekomendasi_menu_view, 
    makanan_view, 
    makanan_terkait_view,
    satuan_view,
    preferensi_makanan_view,
)


urlpatterns = [
    # Database end-points
    
    # # Anthing about user
    # # # User
    path("users/<int:id>", user_view.show),
    path("users/<int:id>/edit/", user_view.update),
    path("users/<int:id>/delete/", user_view.destroy),
    
    # # # Profile
    path("users/<int:id>/profile", user_profile_view.show),
    path("users/<int:id>/profile/edit/", user_profile_view.update),
    
    # # # Preferensi makanan
    path("users/<int:id>/preferensi-makanan", preferensi_makanan_view.index),
    path("users/<int:id>/preferensi-makanan/new/", preferensi_makanan_view.create),
    path("users/<int:id>/preferensi-makanan/<int:preferensi_id>", preferensi_makanan_view.show),
    path("users/<int:id>/preferensi-makanan/<int:preferensi_id>/update", preferensi_makanan_view.update),
    path("users/<int:id>/preferensi-makanan/<int:preferensi_id>/delete", preferensi_makanan_view.destroy),
    
    # # # Riwayat rekomendasi makanan
    # TODO: GET, POST, DELETE
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet", riwayat_rekomendasi_rencana_diet_view.index),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/new", riwayat_rekomendasi_rencana_diet_view.create),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>", riwayat_rekomendasi_rencana_diet_view.show),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/delete", riwayat_rekomendasi_rencana_diet_view.destroy),

    # # # # Riwayat rekomendasi makanan - pilih hari
    # TODO: GET
    
    # # # # # Riwayat rekomendasi makanan - pilih hari - pilih makanan
    # TODO: GET
    
    # # Tingkat aktivitas
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
