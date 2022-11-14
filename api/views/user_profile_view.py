from rest_framework.response import Response
from rest_framework import status
from rest_framework.views import APIView
from base.models import UserProfile
from api.services.user_profile_service import UserProfileService
from base.model_filter import UserProfileFilter
from api.serializers.UserSerializer import UserProfileSerializer
from django.http import Http404


class UserProfileList(APIView):
    def get(self, request, format=None):
        try:
            queryset = UserProfile.objects.all()
            filterset = UserProfileFilter(request.GET, queryset=queryset)
            
            if filterset.is_valid():
                queryset = filterset.qs
            
            serializer = UserProfileSerializer(
                queryset, many=True)

            return Response({
                "message": "Berhasil mengambil profile User",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args
            }, status=status.HTTP_400_BAD_REQUEST)

    def post(self, request, format=None):
        try:

            result = UserProfileService.post(self, request)

            return Response({
                "message": "Berhasil membuat profile User",
                "statusCode": 200,
                "data": result.data
            }, status=status.HTTP_201_CREATED)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args
            }, status=status.HTTP_400_BAD_REQUEST)


class UserProfileDetail(APIView):
    def get_object(self, id):
        try:
            return UserProfile.objects.get(id=id)
        except UserProfile.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    def get(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            serializer = UserProfileSerializer(queryset, many=False)

            return Response({
                "message": "Berhasil mengambil profile User",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args
            }, status=status.HTTP_400_BAD_REQUEST)

    def put(self, request, id, format=None):
        try:

            result = UserProfileService.put(self, request, id)

            return Response({
                "message": "Berhasil update profile user",
                "statusCode": 200,
                "data": result.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args
            }, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            queryset.delete()

            return Response({
                "message": "Berhasil update profile user",
                "statusCode": 200,
            }, status=status.HTTP_204_NO_CONTENT)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args
            }, status=status.HTTP_400_BAD_REQUEST)
