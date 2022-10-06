from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status
from base.models import RencanaDiet, Minum
from api.serializers.RencanaDietSerializer import MinumSerializer

@api_view(['GET'])
def index(request, id, rencana_id):
    if request.method == 'GET':
        try:
            rencana_diet = RencanaDiet.objects.filter(user_id = id, id = rencana_id).get()
            queryset = Minum.objects.get(rencana_diet_id = rencana_diet.id)
            serializer = MinumSerializer(queryset, many=False)
            
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

@api_view(['POST'])
def create(request, id, rencana_id):
    if request.method == 'POST':
        body = request.data
        try:
            serializer = MinumSerializer(data = body)
            rencana_diet = RencanaDiet.objects.filter(user_id = id, id = rencana_id).get()
            
            if serializer.is_valid():
                serializer.save(rencana_diet = rencana_diet)
            
            return Response({
                "message": "Berhasil tambah rencana diet minum",
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
def update(request, id, rencana_id):
    body = request.data
    if request.method == 'PUT':
        try:
            rencana_diet = RencanaDiet.objects.filter(user_id = id, id = rencana_id).get()
            minum = Minum.objects.get(rencana_diet_id = rencana_diet.id)
            serializer = MinumSerializer(minum, data = body)
            
            if serializer.is_valid():
                serializer.save()
            
            return Response({
                "message": "Berhasil hapus rencana diet minum",
                "statusCode": 200,
                "data": serializer.data
            }, status=status.HTTP_200_OK)

        except Exception as e:
            return Response({
                "message": "Terjadi masalah",
                "statusCode": 400,
                "error": e.args[0]
            }, status=status.HTTP_400_BAD_REQUEST)
