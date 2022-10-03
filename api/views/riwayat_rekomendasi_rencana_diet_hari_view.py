from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from base.models import RiwayatRekomendasiRencanaDiet ,RekomendasiRencanaDiet
from api.serializers.RiwayatRekomendasiRencanaDietSerializer import RiwayatRekomendasiRencanaDietHariSerializer


@api_view(['GET'])
def index(request, id, riwayat_id):
    if request.method == 'GET':
        try:
            riwayat_rekomendasi = RiwayatRekomendasiRencanaDiet.objects.filter(user_id = id, id = riwayat_id).get()
            queryset = RekomendasiRencanaDiet.objects.filter(riwayat_rekomendasi = riwayat_rekomendasi.id).all()
            serializer = RiwayatRekomendasiRencanaDietHariSerializer(queryset, many=True)

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

@api_view(['GET'])
def show(request, id, riwayat_id, hari_id):
    if request.method == 'GET':
        try:
            riwayat_rekomendasi = RiwayatRekomendasiRencanaDiet.objects.filter(user_id = id, id = riwayat_id).get()
            queryset = RekomendasiRencanaDiet.objects.filter(riwayat_rekomendasi = riwayat_rekomendasi.id, id=hari_id).get()
            serializer = RiwayatRekomendasiRencanaDietHariSerializer(queryset, many=False)

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

