from django.urls import path
from .views import overview_view, user_view

urlpatterns = [
    path("", overview_view.index, name="admin_index"),
    
    path("/user", user_view.index, name="user_index"),
    path("/user/add", user_view.add, name="user_add"),
    path("/user/detail", user_view.detail, name="user_detail"),
    path("/user/detail/menu", user_view.detailRiwayat, name="user_detail_menu"),
]
