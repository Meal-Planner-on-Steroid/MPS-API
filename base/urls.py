from django.urls import path
from .views import (
    overview_view,
    user_view,
    bahan_makanan_view,
    menu_makanan_view,
    camilan_view,
    generate_rekomendasi_menu_view,
    tingkat_aktivitas_view
)

urlpatterns = [
    # index
    path("", overview_view.index, name="admin_index"),
    # User
    path("/user", user_view.index, name="user_index"),
    path("/user/add", user_view.add, name="user_add"),
    path("/user/detail", user_view.detail, name="user_detail"),
    path("/user/detail/menu", user_view.detailRiwayat, name="user_detail_menu"),
    # Bahan makanan
    path("/bahan-makanan", bahan_makanan_view.index, name="bahan_makanan_index"),
    path("/bahan-makanan/add", bahan_makanan_view.add, name="bahan_makanan_add"),
    path(
        "/bahan-makanan/detail", bahan_makanan_view.detail, name="bahan_makanan_detail"
    ),
    # Menu makananan
    path("/menu-makanan", menu_makanan_view.index, name="menu_makanan_index"),
    path("/menu-makanan/add", menu_makanan_view.add, name="menu_makanan_add"),
    path("/menu-makanan/detail", menu_makanan_view.detail, name="menu_makanan_detail"),
    # Camilan
    path("/camilan", camilan_view.index, name="camilan_index"),
    path("/camilan/add", camilan_view.add, name="camilan_add"),
    path("/camilan/detail", camilan_view.detail, name="camilan_detail"),
    # Generate menu
    path("/generate-menu", generate_rekomendasi_menu_view.index, name="generate_menu_index"),
    path("/generate-menu-hasil", generate_rekomendasi_menu_view.hasil, name="generate_menu_index"),
    # Tingkat aktivitas
    path("/tingkat-aktivitas", tingkat_aktivitas_view.index, name="tingkat_aktivitas_index"),
]
