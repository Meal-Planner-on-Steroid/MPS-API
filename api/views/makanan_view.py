from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import Makanan, Satuan
from base.model_filter import MakananFilter
from api.serializers.MakananSerializer import MakananSerializer


@api_view(['GET'])
def index(request):
    if request.method == 'GET':
        try:
            queryset = Makanan.objects.all()
            paginator = PageNumberPagination()
            paginator.page_size = 10
            filterset = MakananFilter(request.GET, queryset=queryset)
            
            
            if filterset.is_valid():
                queryset = filterset.qs
                
            paginate = paginator.paginate_queryset(queryset, request)
            serializer = MakananSerializer(paginate, many=True)

            return Response({
                "message": "Berhasil mengambil Makanan",
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
def show(request, id):
    if request.method == 'GET':
        try:
            queryset = Makanan.objects.get(id=id)
            serializer = MakananSerializer(queryset, many=False)

            return Response({
                "message": "Berhasil mengambil Makanan",
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
def create(request):
    if request.method == 'POST':
        body = request.data
        try:
            
            serializer = MakananSerializer(data = body)
            satuan = Satuan.objects.filter(id=body['besar_porsi_id']).get()
            
            if serializer.is_valid():
                serializer.save(besar_porsi=satuan)
            
            return Response({
                "message": "Berhasil tambah makanan",
                "statusCode": 200,
                "data": serializer.data
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
        body = request.data
        try:
            makanan = Makanan.objects.get(id=id)
            serializer = MakananSerializer(makanan, data = body)
            satuan = Satuan.objects.filter(id=body['besar_porsi_id']).get()
            
            if serializer.is_valid():
                serializer.save(besar_porsi=satuan)
            
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
def destroy(request, id):
    if request.method == 'DELETE':
        try:
            Makanan.objects.filter(id=id).delete()
            
            return Response({
                "message": "Berhasil hapus makanan",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
