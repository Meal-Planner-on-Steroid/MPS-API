from base.models import MakananDiet, RencanaDiet, Makanan
from api.serializers.RencanaDietSerializer import MakananDietSerializer
from django.http import Http404


class RencanaDietMakananService():

    def get_object(self, id):
        try:
            return MakananDiet.objects.get(id=id)
        except MakananDiet.DoesNotExist:
            raise Http404("Tidak ada data yang cocok")

    # TODO: Perbaiki pakai serializer
    def post(self, request):
        body = request.data
        try:
            makanan_diet = MakananDiet.objects.filter(
                rencana_diet_id=body['rencana_diet']['id']).all()
            if len(makanan_diet) >= 5:
                raise Exception('Hanya ada 5 makanan dalam satu rencana diet')

            makanan_diet = MakananDiet(
                waktu_makan=body['waktu_makan'],
                rencana_diet=RencanaDiet.objects.get(id=body['rencana_diet']['id']),
                makanan=Makanan.objects.get(id=body['makanan']['id'])
            )
            makanan_diet.save()
            
            queryset = Makanan.objects.get(id = makanan_diet.id)
            serializer = MakananDietSerializer(queryset)

            return serializer

        except Exception as e:
            raise Exception(e.args)

    # TODO: Perbaiki pakai serializer yang benar
    def put(self, request, id):
        body = request.data
        try:
            queryset = self.get_object(id)

            serializer = MakananDietSerializer(queryset, data={
                'waktu_makan': body['waktu_makan'],
                'status': body['status'],
                'makanan': Makanan.objects.get(id=body['makanan']['id']),
                'rencana_diet': RencanaDiet.objects.get(id=body['rencana_diet']['id'])
            })

            if serializer.is_valid():
                serializer.save()

            return serializer

        except Exception as e:
            raise Exception(e.args)
