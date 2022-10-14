from django.urls import path
from .views import (
    user_view,
    user_profile_view,
    aktivitas_view, 
    kebutuhan_gizi_view, 
    generate_rekomendasi_menu_view, 
    makanan_view, 
    makanan_terkait_view,
    satuan_view,
    preferensi_makanan_view,
    riwayat_rekomendasi_rencana_diet_view,
    riwayat_rekomendasi_rencana_diet_hari_view,
    riwayat_rekomendasi_rencana_diet_makanan_view,
    rencana_diet_view,
    rencana_diet_minum_view,
    rencana_diet_olahraga_view,
    rencana_diet_makanan_view,
    auth_view,
)
from rest_framework_simplejwt.views import (
    TokenRefreshView,
)

urlpatterns = [
    # Database end-points
    # # Auth
    path("auth/register", auth_view.register),
    path('auth/login', auth_view.MyTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('auth/login/refresh', TokenRefreshView.as_view(), name='token_refresh'),
    # path("auth/lupa-password", user_view.show),
    # path("auth/reset-password", user_view.show),
    
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
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet", riwayat_rekomendasi_rencana_diet_view.index),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/new", riwayat_rekomendasi_rencana_diet_view.create),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>", riwayat_rekomendasi_rencana_diet_view.show),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/delete", riwayat_rekomendasi_rencana_diet_view.destroy),

    # # # # Riwayat rekomendasi makanan - pilih hari
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/hari", riwayat_rekomendasi_rencana_diet_hari_view.index),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/hari/<int:hari_id>", riwayat_rekomendasi_rencana_diet_hari_view.show),
    
    # # # # # Riwayat rekomendasi makanan - pilih hari - pilih makanan
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/hari/<int:hari_id>/makanan", riwayat_rekomendasi_rencana_diet_makanan_view.index),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/hari/<int:hari_id>/makanan/<int:makanan_id>", riwayat_rekomendasi_rencana_diet_makanan_view.show),
    
    # # # Rencana diet
    path("users/<int:id>/rencana-diet", rencana_diet_view.index),
    path("users/<int:id>/rencana-diet/new", rencana_diet_view.create),
    path("users/<int:id>/rencana-diet/<int:rencana_id>", rencana_diet_view.show),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/delete", rencana_diet_view.destroy),
    
    # # # # Rencana diet - Minum
    path("users/<int:id>/rencana-diet/<int:rencana_id>/minum", rencana_diet_minum_view.index),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/minum/new", rencana_diet_minum_view.create), # Just in case
    path("users/<int:id>/rencana-diet/<int:rencana_id>/minum/update", rencana_diet_minum_view.update),
    
    # # # # Rencana diet - Olahraga
    path("users/<int:id>/rencana-diet/<int:rencana_id>/olahraga", rencana_diet_olahraga_view.index),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/olahraga/new", rencana_diet_olahraga_view.create), # Just in case
    path("users/<int:id>/rencana-diet/<int:rencana_id>/olahraga/update", rencana_diet_olahraga_view.update),
    
    # # # # Rencana diet - Makanan
    path("users/<int:id>/rencana-diet/<int:rencana_id>/makanan", rencana_diet_makanan_view.index),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/makanan/new", rencana_diet_makanan_view.create),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/makanan/<int:makanan_id>/update", rencana_diet_makanan_view.update),
    
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
