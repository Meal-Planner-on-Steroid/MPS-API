from base.models import User, Makanan, PreferensiMakanan
from api.serializers.PreferensiMakananSerializer import PreferensiMakananSerializer

class PreferensiMakananService():
    
    def post(self, request):
        body = request.data
        try:
            serializer = PreferensiMakananSerializer(data=body)

            if serializer.is_valid():
                user = User.objects.get(id=body['user']['id'])
                makanan = Makanan.objects.get(id=body['makanan']['id'])
                serializer.save(user=user, makanan=makanan)
            
            return serializer.data

        except Exception as e:
            return e.args
        
    def put(self, request, id):
        body = request.data
        try:
            queryset = PreferensiMakanan.objects.get(id=id)
            serializer = PreferensiMakananSerializer(
                queryset, data=body)

            if serializer.is_valid():
                makanan = Makanan.objects.get(id=body['makanan']['id'])                
                serializer.save(makanan=makanan)
            
            return serializer.data
        except Exception as e:
            return e.args