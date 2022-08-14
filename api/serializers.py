from rest_framework import serializers
from base.models import User, TingkatAktivitas

class TingkatAktivitasSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = TingkatAktivitas
        fields = ['name', 'nilai', 'gender']

class UserSerializer(serializers.ModelSerializer):
    tingkat_aktivitas = TingkatAktivitasSerializer(many=False, read_only=True)
    
    def create(self, validated_data):
        return User(**validated_data)

    class Meta:
        model = User
        fields = ['id', 'name', 'email', 'password', 'gender', 'tingkat_aktivitas']
