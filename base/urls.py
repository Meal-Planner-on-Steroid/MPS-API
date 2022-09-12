from django.urls import path, include
from .views import (
    overview_view,
    user_view,
    bahan_makanan_view,
    menu_makanan_view,
    camilan_view,
    generate_rekomendasi_menu_view,
    tingkat_aktivitas_view,
    makanan_terkait_view,
)
from authentication import views as va
from django.conf import settings 
from django.conf.urls.static import static 

urlpatterns = [
    # index
    path("", overview_view.index, name="admin_index"),
    
    # Auth
    path('', include("django.contrib.auth.urls")),
    # path("register/", va.register, name="register"),
    # path("login/", va.login, name="login"),
    # path("lupa-password/", va.lupaPassword, name="lupa_password"),
    # path("reset-password/", va.resetPassword, name="reset_password"),

    # User
    path("users/", user_view.index, name="user-index"),
    path("users/new/", user_view.create, name="user-add"),
    path("users/<int:id>", user_view.show, name="user-detail"),
    path("users/<int:id>/edit/", user_view.update, name="user-edit"),
    path("users/<int:id>/delete/", user_view.destroy, name="user-delete"),
    path("users/<int:id>/riwayat/<int:riwayat_id>", 
        user_view.showRiwayat, name="user-detail-riwayat"),
    
    # Makanan terkait
    path("makanan-terkait/<int:id>", makanan_terkait_view.create, name="makanan-terkait-index"),
    path("makanan-terkait/<int:id>/delete/<int:makanan_terkait_id>", makanan_terkait_view.destroy, name="makanan-terkait-delete"),

    # Bahan makanan
    path("bahan-makanan/", bahan_makanan_view.index, name="bahan-makanan-index"),
    path("bahan-makanan/new/", bahan_makanan_view.create, name="bahan-makanan-add"),
    path("bahan-makanan/<int:id>", bahan_makanan_view.show, name="bahan-makanan-detail"),
    path("bahan-makanan/<int:id>/edit/", bahan_makanan_view.update, name="bahan-makanan-edit"),
    path("bahan-makanan/<int:id>/delete/", bahan_makanan_view.destroy, name="bahan-makanan-delete"),
    path("bahan-makanan/<int:id>/delete/<int:foto_id>/foto", bahan_makanan_view.destroyFoto, name="bahan-makanan-delete-foto"),

    # Menu makananan
    path("menu-makanan/", menu_makanan_view.index, name="menu_makanan_index"),
    path("menu-makanan/add/", menu_makanan_view.add, name="menu_makanan_add"),
    path("menu-makanan/detail/", menu_makanan_view.detail,
         name="menu_makanan_detail"),

    # Camilan
    path("camilan/", camilan_view.index, name="camilan_index"),
    path("camilan/add/", camilan_view.add, name="camilan_add"),
    path("camilan/detail/", camilan_view.detail, name="camilan_detail"),

    # Generate menu
    path(
        "generate-menu/",
        generate_rekomendasi_menu_view.index,
        name="generate_menu_index",
    ),
    path(
        "generate-menu-hasil/",
        generate_rekomendasi_menu_view.hasil,
        name="generate_menu_index",
    ),

    # Tingkat aktivitas
    path(
        "tingkat-aktivitas/",
        tingkat_aktivitas_view.index,
        name="tingkat-aktivitas-index",
    ),
]
