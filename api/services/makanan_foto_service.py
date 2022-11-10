from base.models import MakananFoto
from api.serializers.MakananFotoSerializer import MakananFotoSerializer
from django.http import Http404


class MakananFotoService():

    def get_object(self, id):
        try:
            return MakananFoto.objects.get(id=id)
        except MakananFoto.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    # TODO: Post setelah update 1.0
    def post(self, request):
        body = request.data
        try:
            serializer = MakananFotoSerializer(data=body)

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
            serializer = MakananFotoSerializer(queryset, data=body)

            if serializer.is_valid():
                serializer.save()

            return serializer

        except Exception as e:
            raise Exception(e.args)
