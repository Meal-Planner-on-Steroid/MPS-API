import imp
from rest_framework.response import Response
from rest_framework.decorators import api_view
from base.models import TingkatAktivitas
from api.serializers import TingkatAktivitasSerializer

@api_view(['GET'])
def getData(request):
    aktivitas = TingkatAktivitas.objects.all()

    serializer = TingkatAktivitasSerializer(aktivitas, many=True)
    
    return Response(serializer.data)