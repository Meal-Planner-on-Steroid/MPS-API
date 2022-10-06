from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from base.models import RencanaDiet, MakananDiet, Makanan, Status
from api.serializers.RencanaDietSerializer import MakananDietSerializer

@api_view(['GET'])
def index(request, id, rencana_id):
    if request.method == 'GET':
        try:
            rencana_diet = RencanaDiet.objects.filter(user_id = id, id = rencana_id).get()
            queryset = MakananDiet.objects.filter(rencana_diet_id = rencana_diet.id).all()
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

@api_view(['POST'])
def create(request, id, rencana_id):
    if request.method == 'POST':
        body = request.data
        try:
            makanan_diet = MakananDiet.objects.filter(rencana_diet_id = rencana_id).all()
            if len(makanan_diet) >= 5:
                raise Exception('Hanya ada 5 makanan dalam satu rencana diet')
            
            makanan_diet = MakananDiet(
                waktu_makan = body['waktu_makan'],
                rencana_diet = RencanaDiet.objects.filter(user_id = id, id = rencana_id).get(),
                makanan = Makanan.objects.get(id = body['makanan']['id'])
            )
            
            makanan_diet.save()
            
            queryset = MakananDiet.objects.get(id = makanan_diet.id)
            serializer = MakananDietSerializer(queryset)
            
            return Response({
                "message": "Berhasil tambah rencana diet makanan",
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

@api_view(['PUT'])
def update(request, id, rencana_id, makanan_id):
    body = request.data
    if request.method == 'PUT':
        try:
            rencana_diet = RencanaDiet.objects.filter(user_id = id, id = rencana_id).get()
            makanan_diet = MakananDiet.objects.filter(rencana_diet_id = rencana_diet.id, id = makanan_id).get()
            
            serializer = MakananDietSerializer(makanan_diet, data = {
                'waktu_makan': body['waktu_makan'],
                'status': body['status'],
                'makanan': Makanan.objects.get(id = body['makanan']['id'])
            })
            
            if serializer.is_valid():
                serializer.save()
            
            return Response({
                "message": "Berhasil hapus rencana diet makanan",
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
