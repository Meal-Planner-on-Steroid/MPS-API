from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from base.models import RiwayatRekomendasiRencanaDiet, RekomendasiRencanaDiet, RekomendasiMakananDiet
from api.serializers.RiwayatRekomendasiRencanaDietSerializer import RiwayatRekomendasiRencanaDietMakananSerializer


@api_view(['GET'])
def index(request, id, riwayat_id, hari_id):
    if request.method == 'GET':
        try:
            riwayat_rekomendasi = RiwayatRekomendasiRencanaDiet.objects.filter(user_id = id, id = riwayat_id).get()
            rekomendasi_diet = RekomendasiRencanaDiet.objects.filter(riwayat_rekomendasi = riwayat_rekomendasi.id, id=hari_id).get()
            queryset = RekomendasiMakananDiet.objects.filter(rekomendasi_rencana_diet = rekomendasi_diet.id).all()
            serializer = RiwayatRekomendasiRencanaDietMakananSerializer(queryset, many=True)
            
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
def show(request, id, riwayat_id, hari_id, makanan_id):
    if request.method == 'GET':
        try:
            riwayat_rekomendasi = RiwayatRekomendasiRencanaDiet.objects.filter(user_id = id, id = riwayat_id).get()
            rekomendasi_diet = RekomendasiRencanaDiet.objects.filter(riwayat_rekomendasi = riwayat_rekomendasi.id, id=hari_id).get()
            queryset = RekomendasiMakananDiet.objects.filter(rekomendasi_rencana_diet = rekomendasi_diet.id, id = makanan_id).get()
            serializer = RiwayatRekomendasiRencanaDietMakananSerializer(queryset, many=False)

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

