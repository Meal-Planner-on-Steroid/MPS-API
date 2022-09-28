# from django_filters import rest_framework as filters
from dataclasses import field
import django_filters
from .models import TingkatAktivitas

class TingkatAktivitasFilter(django_filters.FilterSet):
    nama = django_filters.CharFilter(field_name='nama', lookup_expr='iexact')
    nama__icontains = django_filters.CharFilter(field_name='nama', lookup_expr='icontains')
    
    nilai = django_filters.NumberFilter()
    nilai__gt = django_filters.NumberFilter(field_name='nilai', lookup_expr='gt')
    nilai__lt = django_filters.NumberFilter(field_name='nilai', lookup_expr='lt')

    
    class Meta:
        model = TingkatAktivitas
        fields = ['nama', 'nilai', 'gender']
        