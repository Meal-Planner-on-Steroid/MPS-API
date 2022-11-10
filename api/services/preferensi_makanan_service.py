from base.models import User, Makanan, PreferensiMakanan
from api.serializers.PreferensiMakananSerializer import PreferensiMakananSerializer
from django.http import Http404


class PreferensiMakananService():

    def get_object(self, id):
        try:
            return PreferensiMakanan.objects.get(id=id)
        except PreferensiMakanan.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    def post(self, request):
        body = request.data
        try:
            serializer = PreferensiMakananSerializer(data=body)

            if serializer.is_valid():
                user = User.objects.get(id=body['user']['id'])
                makanan = Makanan.objects.get(id=body['makanan']['id'])
                serializer.save(user=user, makanan=makanan)

            return serializer

        except Exception as e:
            raise Exception(e.args)

    def put(self, request, id):
        body = request.data
        try:
            queryset = self.get_object(id)
            serializer = PreferensiMakananSerializer(
                queryset, data=body)

            if serializer.is_valid():
                makanan = Makanan.objects.get(id=body['makanan']['id'])
                serializer.save(makanan=makanan)

            return serializer

        except Exception as e:
            raise Exception(e.args)
