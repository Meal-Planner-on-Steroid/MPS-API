import logging
from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import Makanan, PreferensiMakanan, User
from base.model_filter import PreferensiMakananFilter
from api.serializers.PreferensiMakananSerializer import PreferensiMakananSerializer


@api_view(['GET'])
def index(request, id):
    if request.method == 'GET':
        try:
            queryset = PreferensiMakanan.objects.filter(user_id = id).all()
            paginator = PageNumberPagination()
            paginator.page_size = 10
            filterset = PreferensiMakananFilter(request.GET, queryset=queryset)
            
            
            if filterset.is_valid():
                queryset = filterset.qs
                
            paginate = paginator.paginate_queryset(queryset, request)
            serializer = PreferensiMakananSerializer(paginate, many=True)

            return Response({
                "message": "Berhasil mengambil preferensi makanan",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def show(request, id, preferensi_id):
    if request.method == 'GET':
        try:
            queryset = PreferensiMakanan.objects.filter(user_id = id, id = preferensi_id).get()
            serializer = PreferensiMakananSerializer(queryset, many=False)

            return Response({
                "message": "Berhasil mengambil preferensi makanan",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
def create(request, id):
    if request.method == 'POST':
        body = request.data
        try:
            serializer = PreferensiMakananSerializer(data = body)
            makanan = Makanan.objects.get(id = body['makanan_id'])
            user = User.objects.get(id = id)
            
            if serializer.is_valid():
                serializer.save(user=user, makanan=makanan)
                
            return Response({
                "message": "Berhasil tambah preferensi makanan",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            print(e.args)
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
            
@api_view(['PUT'])
def update(request, id, preferensi_id):
    if request.method == 'PUT':
        body = request.data
        try:
            preferensi_makanan = PreferensiMakanan.objects.get(user_id = id, id = preferensi_id)
            serializer = PreferensiMakananSerializer(preferensi_makanan, data = body)
            makanan = Makanan.objects.get(id = body['makanan_id'])
            
            if serializer.is_valid():
                serializer.save(makanan=makanan)
            
            return Response({
                "message": "Berhasil update makanan",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

@api_view(['DELETE'])
def destroy(request, id, preferensi_id):
    if request.method == 'DELETE':
        try:
            PreferensiMakanan.objects.filter(user_id=id, id=preferensi_id).delete()
            
            return Response({
                "message": "Berhasil hapus preferensi makanan",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
