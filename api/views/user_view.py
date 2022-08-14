from ast import Try
import imp
from os import abort
from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from base.models import User
from api.serializers import UserSerializer


@api_view(["GET", "POST"])
def userController(request):
    if request.method == "POST":
        try:
            user = User(
                name=request.data["name"],
                email=request.data["email"],
                password=request.data["password"],
                gender=request.data["gender"],
                tingkat_aktivitas_id=request.data["tingkat_aktivitas_id"],
            )

            user.save()
            serializer = UserSerializer(user, many=False)
            return Response(serializer.data)

        except Exception as e:
            return Response({"error": e})

    if request.method == "GET":
        users = User.objects.all().prefetch_related("tingkat_aktivitas")

        serializer = UserSerializer(users, many=True)

        return Response(serializer.data)
