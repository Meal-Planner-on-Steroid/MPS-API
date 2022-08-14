from django.urls import path
from .views import overview_view, user_view

urlpatterns = [
    path("", overview_view.index, name="index"),
    path("/users", user_view.index, name="user"),
    path("/user/<int:id>", user_view.getUser, name="user"),
]
