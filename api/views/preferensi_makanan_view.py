from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.pagination import PageNumberPagination
from django.http import Http404
from base.models import Makanan, PreferensiMakanan, User
from base.model_filter import PreferensiMakananFilter
from api.serializers.PreferensiMakananSerializer import PreferensiMakananSerializer
from api.services.preferensi_makanan_service import PreferensiMakananService


class PreferensiMakananList(APIView):
    def get(self, request, format=None):
        try:
            queryset = PreferensiMakanan.objects.all()
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

    def post(self, request, format=None):
        try:
            response = PreferensiMakananService.post(self, request)

            return Response({
                "message": "Berhasil tambah preferensi makanan",
                "statusCode": 200,
                "data": response
            }, status=status.HTTP_200_OK)

        except Exception as e:
            print(e.args)
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)


class PreferensiMakananDetail(APIView):

    def get_object(self, id):
        try:
            return PreferensiMakanan.objects.get(id=id)
        except Exception as e:
            raise Http404

    def get(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
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

    def put(self, request, id, format=None):
        try:
            response = PreferensiMakananService.put(self, request, id)

            return Response({
                "message": "Berhasil update makanan",
                "statusCode": 200,
                "data": response
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
                "message": "Berhasil hapus preferensi makanan",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
