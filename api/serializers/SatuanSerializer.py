from rest_framework import serializers
from base.models import Satuan


class SatuanSerializer(serializers.ModelSerializer):

    class Meta:
        model = Satuan
        fields = ['id', 'nama', 'created_at', 'updated_at']
