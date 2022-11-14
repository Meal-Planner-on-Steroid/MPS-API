from base.models import Minum, RencanaDiet
from api.serializers.RencanaDietSerializer import MinumSerializer
from django.http import Http404


class RencanaDietMinumService():

    def get_object(self, id):
        try:
            return Minum.objects.get(id=id)
        except Minum.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    def post(self, request):
        body = request.data
        try:
            serializer = MinumSerializer(data=body)

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
            serializer = MinumSerializer(queryset, data=body)

            if serializer.is_valid():
                rencana_diet = RencanaDiet.objects.get(
                    id=body['rencana_diet']['id'])
                serializer.save(rencana_diet=rencana_diet)

            return serializer

        except Exception as e:
            raise Exception(e.args)
