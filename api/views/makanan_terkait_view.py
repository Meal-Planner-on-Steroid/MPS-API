from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import Http404
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import BahanMakanan
from base.model_filter import BahanMakananFilter
from api.serializers.BahanMakananSerializer import BahanMakananSerializer


class MakananTerkaitList(APIView):

    def get(self, request, format=None):
        try:
            # menu_queryset = BahanMakanan.objects.all().filter(menu_makanan_id=id)
            # menu_serializer = MenuMakananSerializer(menu_queryset, many=True)

            # bahan_queryset = BahanMakanan.objects.all().filter(bahan_makanan_id=id)
            # bahan_serializer = BahanMakananSerializer(
            #     bahan_queryset, many=True)

            # data = {
            #     "menu_makanan": menu_serializer.data,
            #     "bahan_makanan": bahan_serializer.data
            # }

            queryset = BahanMakanan.objects.all()
            paginator = PageNumberPagination()
            paginator.page_size = 10
            filterset = BahanMakananFilter(request.GET, queryset=queryset)
            
            if filterset.is_valid():
                queryset = filterset.qs
                
            paginate = paginator.paginate_queryset(queryset, request)
            serializer = BahanMakananSerializer(paginate, many=True)

            return Response({
                "message": "Berhasil mengambil makanan terkait",
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
            # TODO: Comming soon

            return Response({
                "message": "Comming soon feature",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)


class MakananTerkaitDetail(APIView):
    
    def get_object(self, id, format=None):
        try:
            return BahanMakanan.objects.get(id=id)
        except BahanMakanan.DoesNotExist:
            return Http404('Tidaka ada data yang cocok')

    def get(self, request, id, format=None):
        try:
            queryset = self.get_object(id)
            serializer = BahanMakananSerializer(queryset, many=False)
            
            return Response({
                "message": "Berhasil mengambil makanan terkait",
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
            # TODO: Comming soon

            return Response({
                "message": "Comming soon feature",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, id, format=None):
        try:
            # TODO: Comming soon

            return Response({
                "message": "Comming soon feature",
                "statusCode": 200,
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
