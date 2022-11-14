from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import Http404
from rest_framework import status
from base.models import Minum
from api.serializers.RencanaDietSerializer import MinumSerializer
from base.model_filter import RencanaMinumDietFilter
from api.services.rencana_diet_minum_service import RencanaDietMinumService


class RencanaDietMinumList(APIView):

    def get(self, request, format=None):
        try:
            queryset = Minum.objects.all()
            filterset = RencanaMinumDietFilter(request.GET, queryset=queryset)

            if filterset.is_valid():
                queryset = filterset.qs

            serializer = MinumSerializer(queryset, many=True)

            return Response({
                "message": "Berhasil mengambil rencana diet minum",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

    # Just in case
    def post(self, request, format=None):
        try:
            result = RencanaDietMinumService.post(self, request)

            return Response({
                "message": "Berhasil tambah rencana diet minum",
                "statusCode": 200,
                "data": result.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            print(e.args)
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)


class RencanaDietMinumDetail(APIView):

    def get_object(self, id, format=None):
        try:
            return Minum.objects.get(id=id)
        except Minum.DoesNotExist:
            raise Http404('Tidak ada data yang cocok')

    def get(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            serializer = MinumSerializer(queryset, many=False)

            return Response({
                "message": "Berhasil mengambil rencana diet minum",
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

            result = RencanaDietMinumService.put(self, request, id)

            return Response({
                "message": "Berhasil hapus rencana diet minum",
                "statusCode": 200,
                "data": result.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

    # ! Tidak ada delete
