from rest_framework import serializers
from base.models import Makanan
from .SatuanSerializer import SatuanSerializer
from .BahanMakananSerializer import BahanMakananSerializer, MenuMakananSerializer
from .MakananFotoSerializer import MakananFotoSerializer


class MakananSerializer(serializers.ModelSerializer):
    # besar_porsi = SatuanSerializer(many=False, read_only=True)
    # bahan_makanan = BahanMakananSerializer(many=True, read_only=True)
    # menu_makanan = MenuMakananSerializer(many=True, read_only=True)
    # makanan_foto = MakananFotoSerializer(many=True, read_only=True)

    class Meta:
        model = Makanan
        # fields = ['id', 'nama', 'makanan_foto', 'porsi', 'lemak', 'protein', 'karbo',
        #           'energi', 'jenis', 'berat_porsi', 'besar_porsi', 'sumber', 'kelompok', 'bahan_makanan', 'menu_makanan']
        fields = ['id', 'nama', 'porsi', 'lemak', 'protein', 'karbo', 'energi',
                  'jenis', 'berat_porsi', 'besar_porsi_id', 'sumber', 'kelompok', 'created_at', 'updated_at']
