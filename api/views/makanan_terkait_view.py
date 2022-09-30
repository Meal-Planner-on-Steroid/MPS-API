from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from base.models import Makanan, Satuan, BahanMakanan
from base.model_filter import MakananFilter
from api.serializers.MakananSerializer import MakananSerializer
from api.serializers.BahanMakananSerializer import BahanMakananSerializer, MenuMakananSerializer


@api_view(['GET'])
def index(request, id):
    if request.method == 'GET':
        try:
            menu_queryset = BahanMakanan.objects.all().filter(menu_makanan_id=id)
            menu_serializer = MenuMakananSerializer(menu_queryset, many=True)
            
            bahan_queryset = BahanMakanan.objects.all().filter(bahan_makanan_id=id)
            bahan_serializer = BahanMakananSerializer(bahan_queryset, many=True)
            
            data = {
                "menu_makanan": menu_serializer.data,
                "bahan_makanan": bahan_serializer.data
            }
            return Response({
                "message": "Berhasil mengambil Makanan",
                "statusCode": 200,
                "data": data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET'])
def show(request, id):
    if request.method == 'GET':
        try:
            # TODO: Comming soon

            return Response({
                "message": "Comming soon feature",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def create(request):
    if request.method == 'POST':
        try:
            # TODO: Comming soon

            return Response({
                "message": "Comming soon feature",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
            
@api_view(['PUT'])
def update(request, id):
    if request.method == 'PUT':
        try:
            # TODO: Comming soon

            return Response({
                "message": "Comming soon feature",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

@api_view(['DELETE'])
def destroy(request, id):
    if request.method == 'DELETE':
        try:
            # TODO: Comming soon

            return Response({
                "message": "Comming soon feature",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
