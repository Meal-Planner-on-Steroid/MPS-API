from rest_framework import serializers
from base.models import PreferensiMakanan
from .MakananSerializer import MakananSerializer


class PreferensiMakananSerializer(serializers.ModelSerializer):

    class Meta:
        model = PreferensiMakanan
        fields = ['id', 'user_id', 'makanan_id', 'jenis']
