from rest_framework import serializers
from .TingkatAktivitasSerializer import TingkatAktivitasSerializer
from base.models import User, UserProfile
from django.contrib.auth import get_user_model  # If used custom user model

UserModel = get_user_model()


class UserProfileSerializer(serializers.ModelSerializer):

    class Meta:
        model = UserProfile
        fields = [
            'id',
            'user_id',
            'avatar',
            'tingkat_aktivitas_id',
            'berat_badan',
            'tinggi_badan',
            'usia',
            'gender',
            'imt',
            'keseluruhan_energi',
            'butuh_protein',
            'butuh_karbo',
            'butuh_lemak',
            'created_at',
            'updated_at'
        ]


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = UserModel
        fields = ['id', 'first_name', 'last_name', 'username', 'email']

