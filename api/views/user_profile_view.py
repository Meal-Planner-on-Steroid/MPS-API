from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from base.models import User, UserProfile
from api.serializers.UserSerializer import UserSerializer, UserProfileSerializer
import logging

@api_view(["GET"])
def show(request, id):
    if request.method == "GET":
        try:
            profile_queryset = UserProfile.objects.get(user = id)
            profile_serializer = UserProfileSerializer(profile_queryset, many=False)

            return Response({
                "message": "Berhasil mengambil profile User",
                "statusCode": 200,
                "data": profile_serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

@api_view(["PUT"])
def update(request, id):
    body = request.data
    if request.method == "PUT":
        try:
            profile = UserProfile.objects.get(user = id)
            serializer = UserProfileSerializer(profile, data = body)
            
            if serializer.is_valid():
                serializer.save()

            return Response({
                "message": "Berhasil update profile user",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
