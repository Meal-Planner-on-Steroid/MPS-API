from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import Http404
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import Olahraga
from api.serializers.RencanaDietSerializer import OlahragaSerializer
from base.model_filter import RencanaOlahragaDietFilter
from api.services.rencana_diet_olahraga_service import RencanaDietOlahragaService


class RencanaDietOlahragaList(APIView):
    def get(self, request, format=None):
        try:
            queryset = Olahraga.objects.all()
            paginator = PageNumberPagination()
            paginator.page_size = 10
            
            if request.GET.get('limit'):
                paginator.page_size = request.GET['limit'];
                
            filterset = RencanaOlahragaDietFilter(
                request.GET, queryset=queryset)

            if filterset.is_valid():
                queryset = filterset.qs

            paginate = paginator.paginate_queryset(queryset, request)
            serializer = OlahragaSerializer(paginate, many=True)

            return Response({
                "message": "Berhasil mengambil rencana diet olahraga",
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
            result = RencanaDietOlahragaService.post(self, request)

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


class RencanaDietOlahragaDetail(APIView):
    
    def get_object(self, id):
        try:
            return Olahraga.objects.get(id=id)
        except Olahraga.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    def get(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            serializer = OlahragaSerializer(queryset, many=False)

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

            result = RencanaDietOlahragaService.put(self, request, id)

            return Response({
                "message": "Berhasil hapus rencana diet olahraga",
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
