from rest_framework import serializers
from .TingkatAktivitasSerializer import TingkatAktivitasSerializer
from base.models import User

class UserSerializer(serializers.ModelSerializer):
    tingkat_aktivitas = TingkatAktivitasSerializer(many=False, read_only=True)
    
    def create(self, validated_data):
        return User(**validated_data)

    class Meta:
        model = User
        fields = ['id', 'name', 'email', 'password', 'gender', 'tingkat_aktivitas_id', 'tingkat_aktivitas']
