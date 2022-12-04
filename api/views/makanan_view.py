from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import Http404
from rest_framework.decorators import api_view
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import Makanan, Satuan
from base.model_filter import MakananFilter
from api.serializers.MakananSerializer import MakananSerializer
from api.services.makanan_service import MakananService


class MakananList(APIView):

    def get(self, request, format=None):
        try:
            queryset = Makanan.objects.all()
            paginator = PageNumberPagination()
            paginator.page_size = 10

            if request.GET.get('limit'):
                paginator.page_size = request.GET['limit'];
                
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

    def post(self, request, format=None):
        try:
            # TODO: Upload foto            
            result = MakananService.post(self, request)

            return Response({
                "message": "Berhasil tambah makanan",
                "statusCode": 200,
                "data": result.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)


class MakananDetail(APIView):

    def get_object(self, id):
        try:
            return Makanan.objects.get(id=id)
        except Makanan.DoesNotExist:
            return Http404('Tidak ada data yang cocok')

    def get(self, request, id, format=None):
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

    def put(self, request, id, format=None):
        body = request.data
        try:
            # TODO: Update foto
            result = MakananService.put(self, request, id)

            return Response({
                "message": "Berhasil update makanan",
                "statusCode": 200,
                "data": result.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, id):
        try:
            # TODO: Delete foto
            queryset = self.get_object(id)
            queryset.delete()

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
