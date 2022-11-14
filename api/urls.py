from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from rest_framework_simplejwt.views import (
    TokenRefreshView,
)

from .views import (
    user_view,
    kebutuhan_gizi_view, 
    generate_rekomendasi_menu_view, 
    auth_view,
)

from .views.user_profile_view import UserProfileList, UserProfileDetail
from .views.aktivitas_view import AktivitasList, AktivitasDetail
from .views.preferensi_makanan_view import PreferensiMakananList, PreferensiMakananDetail
from .views.riwayat_rekomendasi_rencana_diet_view import RiwayatRekomendasiRencanaDietList, RiwayatRekomendasiRencanaDietDetail
from .views.riwayat_rekomendasi_rencana_diet_hari_view import RekomendasiRencanaDietList, RekomendasiRencanaDietDetail
from .views.riwayat_rekomendasi_rencana_diet_makanan_view import RekomendasiMakananDietList, RekomendasiMakananDietDetail

from .views.rencana_diet_view import RencanaDietList, RencanaDietDetail
from .views.rencana_diet_minum_view import RencanaDietMinumList, RencanaDietMinumDetail
from .views.rencana_diet_olahraga_view import RencanaDietOlahragaList, RencanaDietOlahragaDetail
from .views.rencana_diet_makanan_view import RencanaDietMakananList, RencanaDietMakananDetail

from .views.makanan_view import MakananList, MakananDetail
from .views.makanan_terkait_view import MakananTerkaitList, MakananTerkaitDetail
from .views.makanan_foto_view import MakananFotoList, MakananFotoDetail
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
    
    # Riwayat rekomendasi makanan
    path("riwayat-rekomendasi-rencana-diet/", RiwayatRekomendasiRencanaDietList.as_view()),
    path("riwayat-rekomendasi-rencana-diet/<int:id>/", RiwayatRekomendasiRencanaDietDetail.as_view()),

    # Riwayat rekomendasi makanan-pilih hari
    path("rekomendasi-rencana-diet/", RekomendasiRencanaDietList.as_view()),
    path("rekomendasi-rencana-diet/<int:id>/", RekomendasiRencanaDietDetail.as_view()),
    
    # Riwayat rekomendasi makanan - pilih hari - pilih makanan
    path("rekomendasi-makanan-diet/", RekomendasiMakananDietList.as_view()),
    path("rekomendasi-makanan-diet/<int:id>/", RekomendasiMakananDietDetail.as_view()),
    
    # Rencana diet
    path("rencana-diet/", RencanaDietList.as_view()),
    path("rencana-diet/<int:id>/", RencanaDietDetail.as_view()),
    
    # Rencana diet - Minum
    path("rencana-diet-minum/", RencanaDietMinumList.as_view()),
    path("rencana-diet-minum/<int:id>/", RencanaDietMinumDetail.as_view()),
    
    # Rencana diet - Olahraga
    path("rencana-diet-olahraga/", RencanaDietOlahragaList.as_view()),
    path("rencana-diet-olahraga/<int:id>/", RencanaDietOlahragaDetail.as_view()),
    
    # TODO: Perbaiki response POST & PUT
    # Rencana diet - Makanan
    path("rencana-diet-makanan/", RencanaDietMakananList.as_view()),
    path("rencana-diet-makanan/<int:id>/", RencanaDietMakananDetail.as_view()),
    
    # Makanan
    path('makanan/', MakananList.as_view()),
    path('makanan/<int:id>/', MakananDetail.as_view()),
    
    # Makanan foto
    path('makanan-foto/', MakananFotoList.as_view()),
    path('makanan-foto/<int:id>/', MakananFotoDetail.as_view()),
    
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
