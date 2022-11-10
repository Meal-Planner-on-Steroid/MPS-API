from base.models import Makanan, Satuan
from api.serializers.MakananSerializer import MakananSerializer
from django.http import Http404


class MakananService():

    def get_object(self, id):
        try:
            return Makanan.objects.get(id=id)
        except Makanan.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    def post(self, request):
        body = request.data
        try:
            serializer = MakananSerializer(data=body)

            if serializer.is_valid():
                satuan = Satuan.objects.filter(id=body['besar_porsi']['id']).get()
                serializer.save(besar_porsi=satuan)

            return serializer

        except Exception as e:
            raise Exception(e.args)

    def put(self, request, id):
        body = request.data
        try:
            queryset = self.get_object(id)
            serializer = MakananSerializer(queryset, data=body)

            if serializer.is_valid():
                satuan = Satuan.objects.filter(id=body['besar_porsi']['id']).get()
                serializer.save(besar_porsi=satuan)

            return serializer

        except Exception as e:
            raise Exception(e.args)
