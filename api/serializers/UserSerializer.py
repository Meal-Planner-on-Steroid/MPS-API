from rest_framework import serializers
from .TingkatAktivitasSerializer import TingkatAktivitasSerializer
from base.models import User, UserProfile


class UserProfileSerializer(serializers.ModelSerializer):
    tingkat_aktivitas = TingkatAktivitasSerializer(many=False, read_only=True)
    
    class Meta:
        model = UserProfile
        fields = [
            'avatar',
            'tingkat_aktivitas',
            'berat_badan',
            'tinggi_badan',
            'usia',
            'gender',
            'imt',
            'keseluruhan_energi',
            'butuh_protein',
            'butuh_karbo',
            'butuh_lemak'
        ]

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'username', 'email']

