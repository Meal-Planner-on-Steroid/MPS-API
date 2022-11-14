from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import Http404
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import Makanan, MakananDiet, RencanaDiet, User, Olahraga, Minum
from base.model_filter import RencanaDietFilter
from api.serializers.RencanaDietSerializer import RencanaDietSerializer


class RencanaDietList(APIView):

    def get(self, request, format=None):
        try:
            queryset = RencanaDiet.objects.all()
            paginator = PageNumberPagination()
            paginator.page_size = 10
            filterset = RencanaDietFilter(request.GET, queryset=queryset)

            if filterset.is_valid():
                queryset = filterset.qs

            paginate = paginator.paginate_queryset(queryset, request)
            serializer = RencanaDietSerializer(paginate, many=True)

            return Response({
                "message": "Berhasil mengambil rencana diet",
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
    # ! Tidak dipindah sementara, karena kompoleksitas
    def post(self, request):
        body = request.data
        try:
            rencana_diet_serializer = RencanaDietSerializer(data=body)

            if rencana_diet_serializer.is_valid():
                user = User.objects.get(id=body['user']['id'])
                rencana_diet_serializer.save(user=user)

            rencana_diet = RencanaDiet.objects.get(
                id=rencana_diet_serializer.data['id'])

            # For loop tambah makanan diet
            if 'rencana_diet_makanan' in body:
                if len(body['rencana_diet_makanan']) > 0:
                    for item in body['rencana_diet_makanan']:
                        rencana_makanan = MakananDiet(
                            waktu_makan=item['waktu_makan'],
                            rencana_diet=rencana_diet,
                            makanan=Makanan.objects.get(
                                id=item['makanan']['id'])
                        )

                        rencana_makanan.save()

            if 'olahraga' in body:
                olahraga = Olahraga(
                    rencana_diet=rencana_diet,
                    nama=body['olahraga']['nama'],
                    status=body['olahraga']['status']
                )
                olahraga.save()

            if 'minum' in body:
                minum = Minum(
                    rencana_diet=rencana_diet,
                    jumlah_minum=body['minum']['jumlah_minum'],
                    banyak_minum=body['minum']['banyak_minum'],
                    progress=body['minum']['progress']
                )
                minum.save()

            serializer = RencanaDietSerializer(rencana_diet, many=False)

            return Response({
                "message": "Berhasil tambah rencana diet",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            print(e.args)
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)


class RencanaDietDetail(APIView):

    def get_object(self, id, format=None):
        try:
            return RencanaDiet.objects.get(id=id)
        except RencanaDiet.DoesNotExist:
            raise Http404('Tidak ada data yang cocok')

    def get(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            serializer = RencanaDietSerializer(queryset, many=False)

            return Response({
                "message": "Berhasil mengambil rencana diet",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

    # ! Tidak ada update rencana diet di bagian ini

    def delete(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            queryset.delete()

            return Response({
                "message": "Berhasil hapus rencana diet",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
