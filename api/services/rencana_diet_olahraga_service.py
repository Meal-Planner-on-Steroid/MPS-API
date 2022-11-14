from base.models import Olahraga, RencanaDiet
from api.serializers.RencanaDietSerializer import OlahragaSerializer
from django.http import Http404


class RencanaDietOlahragaService():

    def get_object(self, id):
        try:
            return Olahraga.objects.get(id=id)
        except Olahraga.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    def post(self, request):
        body = request.data
        try:
            serializer = OlahragaSerializer(data=body)

            if serializer.is_valid():
                rencana_diet = RencanaDiet.objects.get(
                    id=body['rencana_diet']['id'])
                serializer.save(rencana_diet=rencana_diet)

            return serializer

        except Exception as e:
            raise Exception(e.args)

    def put(self, request, id):
        body = request.data
        try:
            queryset = self.get_object(id)
            serializer = OlahragaSerializer(queryset, data=body)

            if serializer.is_valid():
                rencana_diet = RencanaDiet.objects.get(
                    id=body['rencana_diet']['id'])
                serializer.save(rencana_diet=rencana_diet)

            return serializer

        except Exception as e:
            raise Exception(e.args)
