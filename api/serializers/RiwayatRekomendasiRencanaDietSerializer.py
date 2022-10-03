from rest_framework import serializers
from base.models import RiwayatRekomendasiRencanaDiet

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
