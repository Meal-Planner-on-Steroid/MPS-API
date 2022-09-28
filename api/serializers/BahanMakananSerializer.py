import imp
from rest_framework import serializers
from base.models import BahanMakanan, Makanan
from .SatuanSerializer import SatuanSerializer

class MakananDetailSerializer(serializers.ModelSerializer):
    besar_porsi = SatuanSerializer(many=False, read_only=True)

    class Meta:
        model = Makanan
        fields = ['id', 'nama', 'porsi', 'lemak', 'protein', 'karbo',
                  'energi', 'jenis', 'berat_porsi', 'besar_porsi', 'sumber', 'kelompok']

class BahanMakananSerializer(serializers.ModelSerializer):
    satuan = SatuanSerializer(many=False, read_only=True)
    bahan_makanan = MakananDetailSerializer(many=False, read_only=True)

    class Meta:
        model = BahanMakanan
        fields = ['bahan_makanan', 'berat', 'satuan']

class MenuMakananSerializer(serializers.ModelSerializer):
    satuan = SatuanSerializer(many=False, read_only=True)
    menu_makanan = MakananDetailSerializer(many=False, read_only=True)

    class Meta:
        model = BahanMakanan
        fields = ['menu_makanan', 'berat', 'satuan']
