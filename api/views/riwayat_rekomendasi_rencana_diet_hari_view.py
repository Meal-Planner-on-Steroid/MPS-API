from rest_framework.views import APIView
from django.http import Http404
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from base.models import RiwayatRekomendasiRencanaDiet, RekomendasiRencanaDiet
from api.serializers.RiwayatRekomendasiRencanaDietSerializer import RiwayatRekomendasiRencanaDietHariSerializer
from base.model_filter import RekomendasiRencanaDietFilter


# ! Hanya ada proses read

class RekomendasiRencanaDietList(APIView):

    def get(self, request):
        try:
            queryset = RekomendasiRencanaDiet.objects.all()
            filterset = RekomendasiRencanaDietFilter(
                request.GET, queryset=queryset)

            if filterset.is_valid():
                queryset = filterset.qs

            serializer = RiwayatRekomendasiRencanaDietHariSerializer(
                queryset, many=True)

            return Response({
                "message": "Berhasil mengambil detail rekomendasi rencana diet",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)


class RekomendasiRencanaDietDetail(APIView):

    def get_object(self, id, format=None):
        try:
            return RekomendasiRencanaDiet.objects.get(id=id)
        except RekomendasiRencanaDiet.DoesNotExist:
            raise Http404('Tidak ada data yang cocok')

    def get(self, request, id):
        try:
            queryset = self.get_object(id)
            serializer = RiwayatRekomendasiRencanaDietHariSerializer(
                queryset, many=False)

            return Response({
                "message": "Berhasil mengambil detail hari riwayat rekomendasi rencana diet",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
