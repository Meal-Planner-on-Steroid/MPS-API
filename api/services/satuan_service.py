from base.models import Satuan
from api.serializers.SatuanSerializer import SatuanSerializer
from django.http import Http404


class SatuanService():

    def get_object(self, id):
        try:
            return Satuan.objects.get(id=id)
        except Satuan.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    def post(self, request):
        body = request.data
        try:
            serializer = SatuanSerializer(data=body)

            if serializer.is_valid():
                serializer.save()

            return serializer

        except Exception as e:
            raise Exception(e.args)

    def put(self, request, id):
        body = request.data
        try:
            queryset = self.get_object(id)
            serializer = SatuanSerializer(queryset, data=body)

            if serializer.is_valid():
                serializer.save()

            return serializer

        except Exception as e:
            raise Exception(e.args)
