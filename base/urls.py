from django.urls import path
from .views import overview_view, user_view, bahan_makanan_view, menu_makanan_view

urlpatterns = [
    path("", overview_view.index, name="admin_index"),
    
    path("/user", user_view.index, name="user_index"),
    path("/user/add", user_view.add, name="user_add"),
    path("/user/detail", user_view.detail, name="user_detail"),
    path("/user/detail/menu", user_view.detailRiwayat, name="user_detail_menu"),
    
    path("/bahan-makanan", bahan_makanan_view.index, name="bahan_makanan_index"),
    path("/bahan-makanan/add", bahan_makanan_view.add, name="bahan_makanan_add"),
    path(
        "/bahan-makanan/detail", bahan_makanan_view.detail, name="bahan_makanan_detail"
    ),
    
    path("/menu-makanan", menu_makanan_view.index, name="menu_makanan_index"),
    path("/menu-makanan/add", menu_makanan_view.add, name="menu_makanan_add"),
    path(
        "/menu-makanan/detail", menu_makanan_view.detail, name="menu_makanan_detail"
    ),
]
