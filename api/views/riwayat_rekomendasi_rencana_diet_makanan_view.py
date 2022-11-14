from rest_framework.views import APIView
from django.http import Http404
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from base.models import RiwayatRekomendasiRencanaDiet, RekomendasiRencanaDiet, RekomendasiMakananDiet
from api.serializers.RiwayatRekomendasiRencanaDietSerializer import RiwayatRekomendasiRencanaDietMakananSerializer
from base.model_filter import RekomendasiMakananDietFilter

# ! Hanya read


class RekomendasiMakananDietList(APIView):

    def get(self, request):
        try:
            queryset = RekomendasiMakananDiet.objects.all()
            filterset = RekomendasiMakananDietFilter(
                request.GET, queryset=queryset)

            if filterset.is_valid():
                queryset = filterset.qs

            serializer = RiwayatRekomendasiRencanaDietMakananSerializer(
                queryset, many=True)

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


class RekomendasiMakananDietDetail(APIView):

    def get_object(self, id, format=None):
        try:
            return RekomendasiMakananDiet.objects.get(id=id)
        except RekomendasiMakananDiet.DoesNotExist:
            raise Http404('Tidak ada data yang cocok')

    def get(self, request, id):
        try:

            queryset = self.get_object(id)
            serializer = RiwayatRekomendasiRencanaDietMakananSerializer(
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
