# from django_filters import rest_framework as filters
from dataclasses import field
import django_filters
from .models import (
    UserProfile,
    PreferensiMakanan,
    Satuan,
    TingkatAktivitas,
    Makanan,
    BahanMakanan,
    MakananFoto,
    RiwayatRekomendasiRencanaDiet,
    RencanaDiet,
)


class UserProfileFilter(django_filters.FilterSet):
    user_id = django_filters.NumberFilter()
    tingkat_aktivitas_id = django_filters.NumberFilter()

    berat_badan = django_filters.NumberFilter()
    berat_badan__gt = django_filters.NumberFilter(
        field_name='berat_badan', lookup_expr='gt')
    berat_badan__lt = django_filters.NumberFilter(
        field_name='berat_badan', lookup_expr='lt')

    tinggi_badan = django_filters.NumberFilter()
    tinggi_badan__gt = django_filters.NumberFilter(
        field_name='tinggi_badan', lookup_expr='gt')
    tinggi_badan__lt = django_filters.NumberFilter(
        field_name='tinggi_badan', lookup_expr='lt')

    usia = django_filters.NumberFilter()
    usia__gt = django_filters.NumberFilter(
        field_name='usia', lookup_expr='gt')
    usia__lt = django_filters.NumberFilter(
        field_name='usia', lookup_expr='lt')

    gender = django_filters.CharFilter(
        field_name='gender', lookup_expr='iexact')
    gender__icontains = django_filters.CharFilter(
        field_name='gender', lookup_expr='icontains')

    imt = django_filters.NumberFilter()
    imt__gt = django_filters.NumberFilter(
        field_name='imt', lookup_expr='gt')
    imt__lt = django_filters.NumberFilter(
        field_name='imt', lookup_expr='lt')

    class Meta:
        model = UserProfile
        fields = ['user_id', 'tingkat_aktivitas_id',
                  'berat_badan', 'tinggi_badan', 'usia', 'gender', 'imt']


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


class BahanMakananFilter(django_filters.FilterSet):

    berat = django_filters.NumberFilter()
    berat__gt = django_filters.NumberFilter(
        field_name='berat', lookup_expr='gt')
    berat__lt = django_filters.NumberFilter(
        field_name='berat', lookup_expr='lt')

    satuan_id = django_filters.NumberFilter()
    bahan_makanan_id = django_filters.NumberFilter()
    menu_makanan_id = django_filters.NumberFilter()

    class Meta:
        model = BahanMakanan
        fields = ['berat', 'satuan_id', 'bahan_makanan_id', 'menu_makanan_id']


class MakananFotoFilter(django_filters.FilterSet):

    makanan_id = django_filters.NumberFilter()

    class Meta:
        model = MakananFoto
        fields = ['makanan_id']


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


class RiwayatRekomendasiRencanaDietFilter(django_filters.FilterSet):
    berat_badan = django_filters.NumberFilter()
    berat_badan__gt = django_filters.NumberFilter(
        field_name='berat_badan', lookup_expr='gt')
    berat_badan__lt = django_filters.NumberFilter(
        field_name='berat_badan', lookup_expr='lt')

    tinggi_badan = django_filters.NumberFilter()
    tinggi_badan__gt = django_filters.NumberFilter(
        field_name='tinggi_badan', lookup_expr='gt')
    tinggi_badan__lt = django_filters.NumberFilter(
        field_name='tinggi_badan', lookup_expr='lt')

    usia = django_filters.NumberFilter()
    usia__gt = django_filters.NumberFilter(
        field_name='usia', lookup_expr='gt')
    usia__lt = django_filters.NumberFilter(
        field_name='usia', lookup_expr='lt')

    gender = django_filters.CharFilter(
        field_name='gender', lookup_expr='iexact')
    gender__icontains = django_filters.CharFilter(
        field_name='gender', lookup_expr='icontains')

    imt = django_filters.NumberFilter()
    imt__gt = django_filters.NumberFilter(
        field_name='imt', lookup_expr='gt')
    imt__lt = django_filters.NumberFilter(
        field_name='imt', lookup_expr='lt')

    keseluruhan_energi = django_filters.NumberFilter()
    keseluruhan_energi__gt = django_filters.NumberFilter(
        field_name='keseluruhan_energi', lookup_expr='gt')
    keseluruhan_energi__lt = django_filters.NumberFilter(
        field_name='keseluruhan_energi', lookup_expr='lt')

    butuh_protein = django_filters.NumberFilter()
    butuh_protein__gt = django_filters.NumberFilter(
        field_name='butuh_protein', lookup_expr='gt')
    butuh_protein__lt = django_filters.NumberFilter(
        field_name='butuh_protein', lookup_expr='lt')

    butuh_karbo = django_filters.NumberFilter()
    butuh_karbo__gt = django_filters.NumberFilter(
        field_name='butuh_karbo', lookup_expr='gt')
    butuh_karbo__lt = django_filters.NumberFilter(
        field_name='butuh_karbo', lookup_expr='lt')

    butuh_lemak = django_filters.NumberFilter()
    butuh_lemak__gt = django_filters.NumberFilter(
        field_name='butuh_lemak', lookup_expr='gt')
    butuh_lemak__lt = django_filters.NumberFilter(
        field_name='butuh_lemak', lookup_expr='lt')
    
    user_id = django_filters.NumberFilter()

    class Meta:
        model = RiwayatRekomendasiRencanaDiet
        fields = [
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
        ]


class RencanaDietFilter(django_filters.FilterSet):
    tanggal = django_filters.NumberFilter()
    tanggal__gt = django_filters.NumberFilter(
        field_name='tanggal', lookup_expr='gt')
    tanggal__lt = django_filters.NumberFilter(
        field_name='tanggal', lookup_expr='lt')

    class Meta:
        model = RencanaDiet
        fields = ['tanggal']
