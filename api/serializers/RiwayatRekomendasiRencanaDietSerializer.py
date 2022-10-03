from rest_framework import serializers
from base.models import RiwayatRekomendasiRencanaDiet, RekomendasiRencanaDiet

class RiwayatRekomendasiRencanaDietSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = RiwayatRekomendasiRencanaDiet
        fields = [
            'id',
            'berat_badan',
            'tinggi_badan',
            'usia',
            'gender',
            'imt',
            'keseluruhan_energi',
            'butuh_protein',
            'butuh_karbo',
            'butuh_lemak',
            'user_id'
        ]

class RiwayatRekomendasiRencanaDietHariSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = RekomendasiRencanaDiet
        fields = [
            'id',
            'riwayat_rekomendasi_id',
        ]