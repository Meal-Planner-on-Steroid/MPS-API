from rest_framework import serializers
from base.models import Makanan
from .SatuanSerializer import SatuanSerializer


class MakananSerializer(serializers.ModelSerializer):
    besar_porsi = SatuanSerializer(many=False, read_only=True)
    
    class Meta:
        model = Makanan
        fields = ['id', 'nama', 'porsi', 'lemak', 'protein', 'karbo',
                  'energi', 'jenis', 'berat_porsi', 'besar_porsi']
