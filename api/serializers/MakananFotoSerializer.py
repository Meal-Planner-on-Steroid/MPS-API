from rest_framework import serializers
from base.models import MakananFoto

class MakananFotoSerializer(serializers.ModelSerializer):

    class Meta:
        model = MakananFoto
        fields = ['id', 'foto']
