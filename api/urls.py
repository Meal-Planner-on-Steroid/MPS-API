from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from rest_framework_simplejwt.views import (
    TokenRefreshView,
)

from .views import (
    user_view,
    kebutuhan_gizi_view, 
    generate_rekomendasi_menu_view, 
    riwayat_rekomendasi_rencana_diet_view,
    riwayat_rekomendasi_rencana_diet_hari_view,
    riwayat_rekomendasi_rencana_diet_makanan_view,
    rencana_diet_view,
    rencana_diet_minum_view,
    rencana_diet_olahraga_view,
    rencana_diet_makanan_view,
    auth_view,
)

from .views.user_profile_view import UserProfileList, UserProfileDetail
from .views.aktivitas_view import AktivitasList, AktivitasDetail
from .views.preferensi_makanan_view import PreferensiMakananList, PreferensiMakananDetail

from .views.makanan_view import MakananList, MakananDetail
from .views.makanan_terkait_view import MakananTerkaitList, MakananTerkaitDetail
from .views.satuan_view import SatuanList, SatuanDetail

urlpatterns = [
    # =========/ Auth endpoints
    path("auth/register", auth_view.register),
    path('auth/login', auth_view.MyTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('auth/login/refresh', TokenRefreshView.as_view(), name='token_refresh'),
    # path("auth/lupa-password", user_view.show),
    # path("auth/reset-password", user_view.show),
    
    # =========/ Database endpoints
    # User
    path("users/<int:id>", user_view.show),
    path("users/<int:id>/edit/", user_view.update),
    path("users/<int:id>/delete/", user_view.destroy),
    
    # User-Profile
    path("users-profile/", UserProfileList.as_view()),
    path("users-profile/<int:id>/", UserProfileDetail.as_view()),
    
    # Tingkat aktivitas
    path("aktivitas/", AktivitasList.as_view()),
    path("aktivitas/<int:id>/", AktivitasDetail.as_view()),
    
    # Preferensi makanan
    path("preferensi-makanan/", PreferensiMakananList.as_view()),
    path("preferensi-makanan/<int:id>/", PreferensiMakananDetail.as_view()),
    
    # TODO: Rapikan, filter
    # Riwayat rekomendasi makanan
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet", riwayat_rekomendasi_rencana_diet_view.index),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/new", riwayat_rekomendasi_rencana_diet_view.create),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>", riwayat_rekomendasi_rencana_diet_view.show),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/delete", riwayat_rekomendasi_rencana_diet_view.destroy),

    # TODO: Rapikan, filter
    # Riwayat rekomendasi makanan-pilih hari
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/hari", riwayat_rekomendasi_rencana_diet_hari_view.index),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/hari/<int:hari_id>", riwayat_rekomendasi_rencana_diet_hari_view.show),
    
    # TODO: Rapikan, filter
    # Riwayat rekomendasi makanan - pilih hari - pilih makanan
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/hari/<int:hari_id>/makanan", riwayat_rekomendasi_rencana_diet_makanan_view.index),
    path("users/<int:id>/riwayat-rekomendasi-rencana-diet/<int:riwayat_id>/hari/<int:hari_id>/makanan/<int:makanan_id>", riwayat_rekomendasi_rencana_diet_makanan_view.show),
    
    # TODO: Rapikan, filter
    # Rencana diet
    path("users/<int:id>/rencana-diet", rencana_diet_view.index),
    path("users/<int:id>/rencana-diet/new", rencana_diet_view.create),
    path("users/<int:id>/rencana-diet/<int:rencana_id>", rencana_diet_view.show),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/delete", rencana_diet_view.destroy),
    
    # TODO: Rapikan, filter
    # Rencana diet - Minum
    path("users/<int:id>/rencana-diet/<int:rencana_id>/minum", rencana_diet_minum_view.index),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/minum/new", rencana_diet_minum_view.create), # Just in case
    path("users/<int:id>/rencana-diet/<int:rencana_id>/minum/update", rencana_diet_minum_view.update),
    
    # TODO: Rapikan, filter
    # Rencana diet - Olahraga
    path("users/<int:id>/rencana-diet/<int:rencana_id>/olahraga", rencana_diet_olahraga_view.index),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/olahraga/new", rencana_diet_olahraga_view.create), # Just in case
    path("users/<int:id>/rencana-diet/<int:rencana_id>/olahraga/update", rencana_diet_olahraga_view.update),
    
    # TODO: Rapikan, filter
    # Rencana diet - Makanan
    path("users/<int:id>/rencana-diet/<int:rencana_id>/makanan", rencana_diet_makanan_view.index),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/makanan/new", rencana_diet_makanan_view.create),
    path("users/<int:id>/rencana-diet/<int:rencana_id>/makanan/<int:makanan_id>/update", rencana_diet_makanan_view.update),
    
    # TODO: Rapikan, filter
    # Makanan
    # path('makanan', makanan_view.index),
    # path('makanan/new/', makanan_view.create),
    # path('makanan/<int:id>', makanan_view.show),
    # path('makanan/<int:id>/update', makanan_view.update),
    # path('makanan/<int:id>/delete', makanan_view.destroy),
    
    path('makanan/', MakananList.as_view()),
    path('makanan/<int:id>/', MakananDetail.as_view()),
    
    # Makanan foto
    # path('makanan-foto'),
    
    # TODO: buat post, put, delete
    # Bahan Makanan (Bahan makanan / Menu makanan)    
    path('makanan-terkait/', MakananTerkaitList.as_view()),
    path('makanan-terkait/<int:id>/', MakananTerkaitDetail.as_view()),
    
    # Satuan makanan -> Satuan makanan didapat dari data set
    path('satuan/', SatuanList.as_view()),
    path('satuan/<int:id>/', SatuanDetail.as_view()),

    # =========/ Algorithm end-points
    path('kebutuhan-gizi', kebutuhan_gizi_view.kebutuhanGiziController),
    path('generate-rekomendasi-menu',
         generate_rekomendasi_menu_view.generateRekomendasiController),
]

urlpatterns = format_suffix_patterns(urlpatterns)
