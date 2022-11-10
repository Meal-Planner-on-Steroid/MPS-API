from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import Http404
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import MakananFoto
from base.model_filter import MakananFotoFilter
from api.serializers.MakananFotoSerializer import MakananFotoSerializer
from api.services.satuan_service import SatuanService


class MakananFotoList(APIView):

    def get(self, request, format=None):
        try:
            queryset = MakananFoto.objects.all()
            paginator = PageNumberPagination()
            paginator.page_size = 10
            filterset = MakananFotoFilter(request.GET, queryset=queryset)

            if filterset.is_valid():
                queryset = filterset.qs

            paginate = paginator.paginate_queryset(queryset, request)
            serializer = MakananFotoSerializer(paginate, many=True)

            return Response({
                "message": "Berhasil mengambil foto makanan",
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
            # TODO: Coming soon
            return Response({
                "message": "Coming soon",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)


class MakananFotoDetail(APIView):

    def get_object(self, id, format=None):
        try:
            return MakananFoto.objects.get(id=id)
        except MakananFoto.DoesNotExist:
            raise Http404('Tidak ada data yang cocok')

    def get(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            serializer = MakananFotoSerializer(queryset, many=False)

            return Response({
                "message": "Berhasil mengambil foto makanan",
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
            # TODO: Coming soon
            return Response({
                "message": "Coming soon",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, id, format=None):
        try:
            # TODO: Coming soon
            return Response({
                "message": "Coming soon",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
