from rest_framework.response import Response
from rest_framework.decorators import api_view
from base.models import User
from api.serializers.UserSerializer import UserSerializer


@api_view(["GET", "POST", "PUT", "DELETE"])
def userController(request):
    if request.method == "GET":
        try:
            users = User.objects.all().prefetch_related("tingkat_aktivitas")

            serializer = UserSerializer(users, many=True)

            return Response(
                {"message": "Berhasil mengambil data user", "users": serializer.data},
                status=200,
            )

        except Exception as e:
            return Response(
                {"message": "Maaf, terjadi kesalahan", "error": e}, status=400
            )

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

            return Response(
                {"message": "Berhasil menambahkan data", "user": serializer.data},
                status=200,
            )

        except Exception as e:
            return Response(
                {"message": "Maaf, terjadi kesalahan", "error": e}, status=400
            )

    if request.method == "PUT":
        try:
            
            user = User.objects.get(id=request.data['id'])
            user.name=request.data["name"]
            user.email=request.data["email"]
            user.password=request.data["password"]
            user.gender=request.data["gender"]
            user.tingkat_aktivitas_id=request.data["tingkat_aktivitas_id"]
            
            user.save()
            
            serializer = UserSerializer(user, many=False)

            return Response(
                {"message": "Berhasil menambahkan data", "user": serializer.data},
                status=200,
            )

        except Exception as e:
            return Response(
                {"message": "Maaf, terjadi kesalahan", "error": e}, status=400
            )

    if request.method == "DELETE":
        try:
            user = User.objects.get(id=request.data['id'])
            user.delete()

            return Response(
                {"message": "Berhasil menghapus data"},
                status=200,
            )

        except Exception as e:
            return Response(
                {"message": "Maaf, terjadi kesalahan", "error": e}, status=400
            )
