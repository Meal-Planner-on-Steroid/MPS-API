from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import Satuan
from base.model_filter import SatuanFilter
from api.serializers.SatuanSerializer import SatuanSerializer


@api_view(['GET'])
def index(request):
    if request.method == 'GET':
        try:
            queryset = Satuan.objects.all()
            paginator = PageNumberPagination()
            paginator.page_size = 10
            filterset = SatuanFilter(request.GET, queryset=queryset)
            
            
            if filterset.is_valid():
                queryset = filterset.qs
                
            paginate = paginator.paginate_queryset(queryset, request)
            serializer = SatuanSerializer(paginate, many=True)

            return Response({
                "message": "Berhasil mengambil Satuan",
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
            queryset = Satuan.objects.get(id=id)
            serializer = SatuanSerializer(queryset, many=False)

            return Response({
                "message": "Berhasil mengambil Satuan",
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
