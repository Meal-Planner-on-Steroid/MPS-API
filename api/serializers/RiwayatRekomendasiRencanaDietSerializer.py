from api.serializers.MakananSerializer import MakananSerializer
from rest_framework import serializers
from base.models import RekomendasiMakananDiet, RiwayatRekomendasiRencanaDiet, RekomendasiRencanaDiet


class RiwayatRekomendasiRencanaDietMakananSerializer(serializers.ModelSerializer):
    # makanan = MakananSerializer(many=False, read_only=True)

    class Meta:
        model = RekomendasiMakananDiet
        fields = [
            'id',
            'makanan_id',
            'waktu_makan',
            'rekomendasi_rencana_diet_id',
        ]


class RiwayatRekomendasiRencanaDietHariSerializer(serializers.ModelSerializer):
    # rekomendasi_rencana_diet = RiwayatRekomendasiRencanaDietMakananSerializer(many=True, read_only=True)
    
    class Meta:
        model = RekomendasiRencanaDiet
        fields = [
            'id',
            'riwayat_rekomendasi_id',
            # 'rekomendasi_rencana_diet',
        ]


class RiwayatRekomendasiRencanaDietSerializer(serializers.ModelSerializer):
    # riwayat_rekomendasi_rencana_diet = RiwayatRekomendasiRencanaDietHariSerializer(many=True, read_only=True)
    butuh_protein = serializers.JSONField()
    butuh_karbo = serializers.JSONField()
    butuh_lemak = serializers.JSONField()
    
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
            'user_id',
            # 'riwayat_rekomendasi_rencana_diet',
        ]
