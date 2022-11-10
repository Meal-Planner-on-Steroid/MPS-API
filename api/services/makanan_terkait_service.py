from base.models import BahanMakanan
from api.serializers.BahanMakananSerializer import BahanMakananSerializer
from django.http import Http404


class BahanMakananService():

    def get_object(self, id):
        try:
            return BahanMakanan.objects.get(id=id)
        except BahanMakanan.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    # TODO: Post setelah update 1.0
    def post(self, request):
        body = request.data
        try:
            serializer = BahanMakananSerializer(data=body)

            if serializer.is_valid():
                serializer.save()

            return serializer

        except Exception as e:
            raise Exception(e.args)

    # TODO: Put setelah update 1.0
    def put(self, request, id):
        body = request.data
        try:
            queryset = self.get_object(id)
            serializer = BahanMakananSerializer(queryset, data=body)

            if serializer.is_valid():
                serializer.save()

            return serializer

        except Exception as e:
            raise Exception(e.args)
