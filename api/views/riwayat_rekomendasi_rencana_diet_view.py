from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import Http404
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


class RiwayatRekomendasiRencanaDietList(APIView):

    def get(self, request):
        try:
            queryset = RiwayatRekomendasiRencanaDiet.objects.all()
            paginator = PageNumberPagination()
            paginator.page_size = 10
            filterset = RiwayatRekomendasiRencanaDietFilter(
                request.GET, queryset=queryset)

            if filterset.is_valid():
                queryset = filterset.qs

            paginate = paginator.paginate_queryset(queryset, request)
            serializer = RiwayatRekomendasiRencanaDietSerializer(
                paginate, many=True)

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

    # TODO: Pindah ke service
    # * Tidak dipindah untuk sementara karena tingkat kompoleksitas
    def post(self, request):
        body = request.data
        try:
            # Insert riwayat kebutuhan gizi
            riwayat = body['kebutuhan_gizi']
            riwayat_serializer = RiwayatRekomendasiRencanaDietSerializer(
                data=riwayat)

            if riwayat_serializer.is_valid():
                user = User.objects.get(id=body['user']['id'])
                riwayat_serializer.save(user=user)

            # Persiapan For loop insert rekomendasi rencana diet perhari
            rekomendasi = body['rekomendasi']
            riwayat_rekomendasi = RiwayatRekomendasiRencanaDiet.objects.get(
                id=riwayat_serializer.data['id'])

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
                        makanan=Makanan.objects.get(id=makanan['id']),
                        waktu_makan=urutan_waktu_makan[i],
                        rekomendasi_rencana_diet=RekomendasiRencanaDiet.objects.get(
                            id=rekomendasi_rencana.id),
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


class RiwayatRekomendasiRencanaDietDetail(APIView):

    def get_object(self, id):
        try:
            return RiwayatRekomendasiRencanaDiet.objects.get(id=id)
        except RiwayatRekomendasiRencanaDiet.DoesNotExist:
            raise Http404('Tidak ada data yang cocok')

    def get(self, request, id):
        try:
            queryset = self.get_object(id)
            serializer = RiwayatRekomendasiRencanaDietSerializer(
                queryset, many=False)

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

    # * Tidak ada proses update riwayat rekomendasi rencana diet

    def delete(self, request, id):
        try:
            queryset = self.get_object(id)
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
