from rest_framework.response import Response
from rest_framework import status
from rest_framework.views import APIView


class IndexList(APIView):
    def get(self, request, format=None):
        return Response({
            "message": "Selamat datang di MPS-API",
            "statusCode": 200,
        }, status=status.HTTP_200_OK)
