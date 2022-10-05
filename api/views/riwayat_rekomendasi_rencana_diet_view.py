from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import (
    User, 
    RiwayatRekomendasiRencanaDiet, 
    RekomendasiRencanaDiet,
    RekomendasiMakananDiet,
    WaktuMakan,
    Makanan,
)
from base.model_filter import RiwayatRekomendasiRencanaDietFilter
from api.serializers.RiwayatRekomendasiRencanaDietSerializer import RiwayatRekomendasiRencanaDietSerializer


@api_view(['GET'])
def index(request, id):
    if request.method == 'GET':
        try:
            queryset = RiwayatRekomendasiRencanaDiet.objects.filter(user_id = id).all()
            paginator = PageNumberPagination()
            paginator.page_size = 10
            filterset = RiwayatRekomendasiRencanaDietFilter(request.GET, queryset=queryset)
            
            if filterset.is_valid():
                queryset = filterset.qs
                
            paginate = paginator.paginate_queryset(queryset, request)
            serializer = RiwayatRekomendasiRencanaDietSerializer(paginate, many=True)

            return Response({
                "message": "Berhasil mengambil riwayat rekomendasi rencana diet",
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
def show(request, id, riwayat_id):
    if request.method == 'GET':
        try:
            queryset = RiwayatRekomendasiRencanaDiet.objects.filter(user_id = id, id = riwayat_id).get()
            serializer = RiwayatRekomendasiRencanaDietSerializer(queryset, many=False)

            return Response({
                "message": "Berhasil mengambil riwayat rekomendasi rencana diet",
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
def create(request, id):
    if request.method == 'POST':
        body = request.data
        try:
            # Insert riwayat kebutuhan gizi
            riwayat = body['kebutuhan_gizi']
            riwayat_serializer = RiwayatRekomendasiRencanaDietSerializer(data = riwayat)    
            user = User.objects.get(id = id)
            if riwayat_serializer.is_valid():
                riwayat_serializer.save(user=user)
            
            # Persiapan For loop insert rekomendasi rencana diet perhari
            rekomendasi = body['rekomendasi']
            riwayat_rekomendasi = RiwayatRekomendasiRencanaDiet.objects.get(id=riwayat_serializer.data['id'])
            
            urutan_waktu_makan = [
                WaktuMakan.PAGI,
                WaktuMakan.SIANG,
                WaktuMakan.MALAM,
                WaktuMakan.CAMILAN,
                WaktuMakan.CAMILAN,
            ]
            
            # For loop insert rekomendasi rencana diet perhari
            for index in rekomendasi:             
                rekomendasi_rencana = RekomendasiRencanaDiet(
                    riwayat_rekomendasi=riwayat_rekomendasi,
                )
                rekomendasi_rencana.save()
                
                # For loop insert makanan rekomendasii rencana diet
                for i, makanan in enumerate(index):
                    rekomendasi_makanan = RekomendasiMakananDiet(
                        makanan = Makanan.objects.get(id = makanan['id']),
                        waktu_makan = urutan_waktu_makan[i],
                        rekomendasi_rencana_diet = RekomendasiRencanaDiet.objects.get(id=rekomendasi_rencana.id),
                    )
                    rekomendasi_makanan.save()
                
            return Response({
                "message": "Berhasil tambah riwayat rekomendasi rencana diet",
                "statusCode": 200,
                "data": {                    
                    "riwayat": riwayat_serializer.data,
                    "rekomendasi": rekomendasi,
                }                    
            }, status=status.HTTP_200_OK)

        except Exception as e:
            print(e.args)
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

@api_view(['DELETE'])
def destroy(request, id, riwayat_id):
    if request.method == 'DELETE':
        try:
            queryset = RiwayatRekomendasiRencanaDiet.objects.filter(user_id=id, id=riwayat_id).get()

            if not(queryset.get()):
                raise
            
            queryset.delete()
            
            return Response({
                "message": "Berhasil hapus riwayat rekomendasi rencana diet",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
