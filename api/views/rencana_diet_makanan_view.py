from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import Http404
from rest_framework import status
from base.models import MakananDiet
from api.serializers.RencanaDietSerializer import MakananDietSerializer
from base.model_filter import RencanaDietMakananFilter
from api.services.rencana_diet_makanan_service import RencanaDietMakananService

class RencanaDietMakananList(APIView):

    def get(self, request, format=None):
        try:
            queryset = MakananDiet.objects.all()
            filterset = RencanaDietMakananFilter(request.GET, queryset=queryset)
            
            if filterset.is_valid():
                queryset = filterset.qs
                
            serializer = MakananDietSerializer(queryset, many=True)

            return Response({
                "message": "Berhasil mengambil rencana diet makanan",
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
            
            result = RencanaDietMakananService.post(self, request)

            return Response({
                "message": "Berhasil tambah rencana diet makanan",
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


class RencanaDietMakananDetail(APIView):
    
    def get_object(self, id):
        try:
            return MakananDiet.objects.get(id=id)
        except MakananDiet.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")
        
    def get(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            serializer = MakananDietSerializer(queryset, many=False)

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
            
            result = RencanaDietMakananService.put(self, request, id)

            return Response({
                "message": "Berhasil hapus rencana diet makanan",
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
