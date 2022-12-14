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
    RekomendasiRencanaDiet,
    RekomendasiMakananDiet,
    RencanaDiet,
    Minum,
    Olahraga,
    MakananDiet,
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
    
    gender = django_filters.CharFilter(field_name='gender', lookup_expr='iexact')
    gender__icontains = django_filters.CharFilter(
        field_name='gender', lookup_expr='icontains')

    id = django_filters.NumberFilter()

    nilai = django_filters.NumberFilter()
    nilai__gt = django_filters.NumberFilter(
        field_name='nilai', lookup_expr='gt')
    nilai__lt = django_filters.NumberFilter(
        field_name='nilai', lookup_expr='lt')

    class Meta:
        model = TingkatAktivitas
        fields = ['id', 'nama', 'nilai', 'gender']

class NumberInFilter(django_filters.BaseInFilter, django_filters.NumberFilter):
    pass


class MakananFilter(django_filters.FilterSet):
    id = django_filters.NumberFilter()    
    id__in = NumberInFilter(field_name='id', lookup_expr='in')
    id__nin = NumberInFilter(field_name='id', lookup_expr='in', exclude=True)
    
    nama = django_filters.CharFilter(field_name='nama', lookup_expr='iexact')
    nama__icontains = django_filters.CharFilter(
        field_name='nama', lookup_expr='icontains')
    
    porsi = django_filters.CharFilter(field_name='porsi', lookup_expr='iexact')
    porsi__icontains = django_filters.CharFilter(
        field_name='porsi', lookup_expr='icontains')
    
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

    jenis = django_filters.CharFilter(field_name='jenis', lookup_expr='iexact')
    jenis__icontains = django_filters.CharFilter(
        field_name='jenis', lookup_expr='icontains')
    class Meta:
        model = Makanan
        fields = ['id', 'nama', 'porsi', 'lemak', 'protein', 'karbo',
                  'energi', 'jenis']


class BahanMakananFilter(django_filters.FilterSet):

    id = django_filters.NumberFilter()
    
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
        fields = ['id', 'berat', 'satuan_id', 'bahan_makanan_id', 'menu_makanan_id']


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
        fields = ['id', 'jenis', 'user_id', 'makanan_id', 'jenis']


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
    
    order_by = django_filters.OrderingFilter(
        # tuple-mapping retains order
        fields=(
            ('id', 'id'),
            ('created_at', 'created_at'),
        ),
    )

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


class RekomendasiRencanaDietFilter(django_filters.FilterSet):
    
    id = django_filters.NumberFilter()

    riwayat_rekomendasi_id = django_filters.NumberFilter()
    order_by = django_filters.OrderingFilter(
        # tuple-mapping retains order
        fields=(
            ('id', 'id'),
            ('created_at', 'created_at'),
        ),
    )
    
    class Meta:
        model = RekomendasiRencanaDiet
        fields = [
            'riwayat_rekomendasi_id',
        ]

class RekomendasiMakananDietFilter(django_filters.FilterSet):
    
    id = django_filters.NumberFilter()
    
    waktu_makan = django_filters.CharFilter(field_name='waktu_makan', lookup_expr='iexact')
    waktu_makan__icontains = django_filters.CharFilter(
        field_name='waktu_makan', lookup_expr='icontains')
    
    makanan_id = django_filters.NumberFilter()
    rekomendasi_rencana_diet_id = django_filters.NumberFilter()
    rekomendasi_rencana_diet_id__in = NumberInFilter(field_name='rekomendasi_rencana_diet_id', lookup_expr='in')
    
    order_by = django_filters.OrderingFilter(
        # tuple-mapping retains order
        fields=(
            ('id', 'id'),
            ('created_at', 'created_at'),
        ),
    )
    
    class Meta:
        model = RekomendasiMakananDiet
        fields = [
            'waktu_makan',
            'makanan_id',
            'rekomendasi_rencana_diet_id',
        ]

class RencanaDietFilter(django_filters.FilterSet):
    tanggal = django_filters.DateFilter()
    tanggal__gt = django_filters.DateFilter(
        field_name='tanggal', lookup_expr='gt')
    tanggal__lt = django_filters.DateFilter(
        field_name='tanggal', lookup_expr='lt')
    
    user_id = django_filters.NumberFilter()
    
    order_by = django_filters.OrderingFilter(
        # tuple-mapping retains order
        fields=(
            ('id', 'id'),
            ('tanggal', 'tanggal'),
            ('created_at', 'created_at'),
        ),
    )

    class Meta:
        model = RencanaDiet
        fields = ['tanggal', 'user_id']


class RencanaMinumDietFilter(django_filters.FilterSet):
    
    jumlah_minum = django_filters.NumberFilter()
    jumlah_minum__gt = django_filters.NumberFilter(field_name='jumlah_minum', lookup_expr='gt')
    jumlah_minum__lt = django_filters.NumberFilter(field_name='jumlah_minum', lookup_expr='lt')
    
    banyak_minum = django_filters.NumberFilter()
    banyak_minum__gt = django_filters.NumberFilter(
        field_name='banyak_minum', lookup_expr='gt')
    banyak_minum__lt = django_filters.NumberFilter(
        field_name='banyak_minum', lookup_expr='lt')
    
    progress = django_filters.NumberFilter()
    progress__gt = django_filters.NumberFilter(
        field_name='progress', lookup_expr='gt')
    progress__lt = django_filters.NumberFilter(
        field_name='progress', lookup_expr='lt')
    
    rencana_diet_id = django_filters.NumberFilter()
    rencana_diet_id__in = NumberInFilter(field_name='rencana_diet_id', lookup_expr='in')
    
    order_by = django_filters.OrderingFilter(
        # tuple-mapping retains order
        fields=(
            ('id', 'id'),
            ('created_at', 'created_at'),
        ),
    )
    
    class Meta:
        model = Minum
        fields = ['jumlah_minum', 'banyak_minum', 'progress', 'rencana_diet_id']

class RencanaOlahragaDietFilter(django_filters.FilterSet):
    nama = django_filters.CharFilter(field_name='nama', lookup_expr='iexact')
    nama__icontains = django_filters.CharFilter(
        field_name='nama', lookup_expr='icontains')
    
    status = django_filters.NumberFilter()
    rencana_diet_id = django_filters.NumberFilter()
    rencana_diet_id__in = NumberInFilter(field_name='rencana_diet_id', lookup_expr='in')
    
    class Meta:
        model = Olahraga
        fields = ['nama', 'status', 'rencana_diet_id']

class RencanaMakananaDietFilter(django_filters.FilterSet):
    
    waktu_makan = django_filters.CharFilter(field_name='waktu_makan', lookup_expr='iexact')
    waktu_makan__icontains = django_filters.CharFilter(
        field_name='waktu_makan', lookup_expr='icontains')
    
    status = django_filters.NumberFilter()
    makanan_id = django_filters.NumberFilter(field_name='makanan_id')
    rencana_diet_id = django_filters.NumberFilter(field_name='rencana_diet_id')
    rencana_diet_id__in = NumberInFilter(field_name='rencana_diet_id', lookup_expr='in')
    
    class Meta:
        model = MakananDiet
        fields = ['waktu_makan', 'status', 'makanan_id', 'rencana_diet_id']
        
class RencanaDietMakananFilter(django_filters.FilterSet):
    waktu_makan = django_filters.CharFilter(field_name='waktu_makan', lookup_expr='iexact')
    waktu_makan__icontains = django_filters.CharFilter(
        field_name='waktu_makan', lookup_expr='icontains')
    
    status = django_filters.NumberFilter()
    makanan_id = django_filters.NumberFilter()
    rencana_diet_id = django_filters.NumberFilter()
    rencana_diet_id__in = NumberInFilter(field_name='rencana_diet_id', lookup_expr='in')
    class Meta:
        model = MakananDiet
        fields = ['waktu_makan', 'status', 'makanan_id', 'rencana_diet_id']