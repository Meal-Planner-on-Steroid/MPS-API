# from django_filters import rest_framework as filters
from dataclasses import field
import django_filters
from .models import (
    PreferensiMakanan,
    Satuan, 
    TingkatAktivitas, 
    Makanan
)


class TingkatAktivitasFilter(django_filters.FilterSet):
    nama = django_filters.CharFilter(field_name='nama', lookup_expr='iexact')
    nama__icontains = django_filters.CharFilter(
        field_name='nama', lookup_expr='icontains')

    nilai = django_filters.NumberFilter()
    nilai__gt = django_filters.NumberFilter(
        field_name='nilai', lookup_expr='gt')
    nilai__lt = django_filters.NumberFilter(
        field_name='nilai', lookup_expr='lt')

    class Meta:
        model = TingkatAktivitas
        fields = ['nama', 'nilai', 'gender']


class MakananFilter(django_filters.FilterSet):
    
    lemak = django_filters.NumberFilter()
    lemak__gt = django_filters.NumberFilter(
        field_name='lemak', lookup_expr='gt')
    lemak__lt = django_filters.NumberFilter(
        field_name='lemak', lookup_expr='lt')
    
    protein = django_filters.NumberFilter()
    protein__gt = django_filters.NumberFilter(
        field_name='protein', lookup_expr='gt')
    protein__lt = django_filters.NumberFilter(
        field_name='protein', lookup_expr='lt')
    
    karbo = django_filters.NumberFilter()
    karbo__gt = django_filters.NumberFilter(
        field_name='karbo', lookup_expr='gt')
    karbo__lt = django_filters.NumberFilter(
        field_name='karbo', lookup_expr='lt')
    
    energi = django_filters.NumberFilter()
    energi__gt = django_filters.NumberFilter(
        field_name='energi', lookup_expr='gt')
    energi__lt = django_filters.NumberFilter(
        field_name='energi', lookup_expr='lt')
    

    class Meta:
        model = Makanan
        fields = ['nama', 'porsi', 'lemak', 'protein', 'karbo',
                  'energi', 'jenis', 'berat_porsi', 'besar_porsi']

class SatuanFilter(django_filters.FilterSet):
    nama = django_filters.CharFilter(field_name='nama', lookup_expr='iexact')
    nama__icontains = django_filters.CharFilter(
        field_name='nama', lookup_expr='icontains')

    class Meta:
        model = Satuan
        fields = ['nama']
        
class PreferensiMakananFilter(django_filters.FilterSet):
    jenis = django_filters.CharFilter(field_name='jenis', lookup_expr='iexact')
    jenis__icontains = django_filters.CharFilter(
        field_name='jenis', lookup_expr='icontains')

    class Meta:
        model = PreferensiMakanan
        fields = ['jenis']