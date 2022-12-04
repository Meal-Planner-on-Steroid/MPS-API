from rest_framework import serializers
from base.models import MakananFoto

class MakananFotoSerializer(serializers.ModelSerializer):

    class Meta:
        model = MakananFoto
        fields = ['id', 'makanan_id', 'foto', 'created_at', 'updated_at']
