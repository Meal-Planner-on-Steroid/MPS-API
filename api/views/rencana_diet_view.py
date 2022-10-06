from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from rest_framework.pagination import PageNumberPagination
from base.models import Makanan, MakananDiet, RencanaDiet, User, Olahraga, Minum
from base.model_filter import RencanaDietFilter
from api.serializers.RencanaDietSerializer import RencanaDietSerializer


@api_view(['GET'])
def index(request, id):
    if request.method == 'GET':
        try:
            queryset = RencanaDiet.objects.filter(user_id = id).all()
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

@api_view(['GET'])
def show(request, id, rencana_id):
    if request.method == 'GET':
        try:
            queryset = RencanaDiet.objects.filter(user_id = id, id = rencana_id).get()
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

@api_view(['POST'])
def create(request, id):
    if request.method == 'POST':
        body = request.data
        try:
            rencana_diet_serializer = RencanaDietSerializer(data = body)
            user = User.objects.get(id = id)
            
            if rencana_diet_serializer.is_valid():
                rencana_diet_serializer.save(user=user)
            
            rencana_diet = RencanaDiet.objects.get(id = rencana_diet_serializer.data['id'])
            
            # For loop tambah makanan diet
            if 'rencana_diet_makanan' in body:
                if len(body['rencana_diet_makanan']) > 0:
                    for item in body['rencana_diet_makanan']:
                        rencana_makanan = MakananDiet(
                            waktu_makan = item['waktu_makan'],
                            rencana_diet = rencana_diet,
                            makanan = Makanan.objects.get(id = item['makanan']['id'])
                        )
                        
                        rencana_makanan.save()
            
            if 'olahraga' in body:
                olahraga = Olahraga(
                    rencana_diet = rencana_diet,
                    nama = body['olahraga']['nama'],
                    status = body['olahraga']['status']
                )
                olahraga.save()
                
            
            if 'minum' in body:
                minum = Minum(
                    rencana_diet = rencana_diet,
                    jumlah_minum = body['minum']['jumlah_minum'],
                    banyak_minum = body['minum']['banyak_minum'],
                    progress = body['minum']['progress']
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

@api_view(['DELETE'])
def destroy(request, id, rencana_id):
    if request.method == 'DELETE':
        try:
            RencanaDiet.objects.filter(user_id=id, id=rencana_id).delete()
            
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
