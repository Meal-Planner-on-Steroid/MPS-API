from rest_framework import serializers
from base.models import PreferensiMakanan
from .MakananSerializer import MakananSerializer

class PreferensiMakananSerializer(serializers.ModelSerializer):
    makanan = MakananSerializer(many=False, read_only=True)
    
    class Meta:
        model = PreferensiMakanan
        fields = ['id', 'makanan', 'jenis', 'user_id']
