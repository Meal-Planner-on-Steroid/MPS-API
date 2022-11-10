from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import Http404
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import Satuan
from base.model_filter import SatuanFilter
from api.serializers.SatuanSerializer import SatuanSerializer
from api.services.satuan_service import SatuanService


class SatuanList(APIView):

    def get(self, request, format=None):
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

    def post(self, request, format=None):
        try:
            result = SatuanService.post(self, request)

            return Response({
                "message": "Berhasil menambahkan satuan",
                "statusCode": 200,
                "data": result.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)


class SatuanDetail(APIView):

    def get_object(self, id, format=None):
        try:
            return Satuan.objects.get(id=id)
        except Satuan.DoesNotExist:
            raise Http404('Tidak ada data yang cocok')

    def get(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
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

    def put(self, request, id, format=None):
        try:
            result = SatuanService.put(self, request, id)
            # queryset = self.get_object(id)
            # serializer = SatuanSerializer(queryset, many=False)

            return Response({
                "message": "Berhasil update satuan",
                "statusCode": 200,
                "data": result.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            queryset.delete()

            return Response({
                "message": "Berhasil hapus satuan",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
