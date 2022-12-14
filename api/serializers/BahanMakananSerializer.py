import imp
from rest_framework import serializers
from base.models import BahanMakanan, Makanan
from .SatuanSerializer import SatuanSerializer

class MakananDetailSerializer(serializers.ModelSerializer):
    besar_porsi = SatuanSerializer(many=False, read_only=True)

    class Meta:
        model = Makanan
        fields = ['id', 'nama', 'porsi', 'lemak', 'protein', 'karbo',
                  'energi', 'jenis', 'berat_porsi', 'besar_porsi', 'sumber', 'kelompok', 'created_at', 'updated_at']

class BahanMakananSerializer(serializers.ModelSerializer):
    # satuan = SatuanSerializer(many=False, read_only=True)
    # bahan_makanan = MakananDetailSerializer(many=False, read_only=True)

    class Meta:
        model = BahanMakanan
        # fields = ['bahan_makanan', 'berat', 'satuan']
        fields = ['id', 'berat', 'satuan_id', 'bahan_makanan_id', 'menu_makanan_id', 'created_at', 'updated_at']

class MenuMakananSerializer(serializers.ModelSerializer):
    satuan = SatuanSerializer(many=False, read_only=True)
    menu_makanan = MakananDetailSerializer(many=False, read_only=True)

    class Meta:
        model = BahanMakanan
        fields = ['menu_makanan', 'berat', 'satuan', 'created_at', 'updated_at']
