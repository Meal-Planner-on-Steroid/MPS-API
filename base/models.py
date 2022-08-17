from curses.ascii import US
from email.policy import default
from pyexpat import model
from random import choices
from django.db import models
from django.utils.translation import gettext_lazy as _

# Create your models here.
class Gender(models.TextChoices):
    PEREMPUAN = 'PE', _('PEREMPUAN')
    LAKI = 'LA', _('LAKI')

class JenisMakanan(models.TextChoices):
    MENU = 'ME', _('MENU')
    BAHAN = 'BA', _('BAHAN')
    CAMILAN = 'CA', _('CAMILAN')
    
class Status(models.IntegerChoices):
    COMPLETE = 1
    INCOMPLETE = 2
    
class JenisSatuan(models.TextChoices):
    GRAM = 'GR', _('GRAM')
    KILOGRAM = 'KG', _('KILOGRAM')
    MILILITER = 'ML', _('MILILITER')
    LITER = 'LI', _('LITER')

class JenisPreferensiMakanan(models.TextChoices):
    FAVORIT = 'FV', _('FAVORIT')
    BLOK = 'BL', _('BLOK')

class WaktuMakan(models.TextChoices):
    PAGI = 'PH', _('PAGI')
    SIANG = 'SI', _('SIANG')
    MALAM = 'ML', _('MALAM')
    CAMILAN = 'CA', _('CAMILAN')
    
class TingkatAktivitas(models.Model):
    
    nama = models.CharField(max_length=100)
    gender = models.CharField(max_length=2, choices=Gender.choices, default=Gender.PEREMPUAN)
    nilai = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
class User(models.Model):
        
    avatar = models.CharField(max_length=100, null=True)
    nama = models.CharField(max_length=100)
    email = models.EmailField(max_length=50)
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=100)
    is_admin = models.BooleanField(default=False)
    tingkat_aktivitas = models.ForeignKey(TingkatAktivitas, related_name="tingkat_aktivitas",on_delete=models.SET_NULL, null=True)
    berat_badan = models.FloatField(null=True);
    tinggi_badan = models.FloatField(null=True);
    usia = models.IntegerField(null=True);
    gender = models.CharField(max_length=2, choices=Gender.choices, default=Gender.PEREMPUAN)
    imt = models.FloatField(null=True);
    keseluruhan_energi = models.FloatField(null=True);
    butuh_protein = models.FloatField(null=True);
    butuh_karbo = models.FloatField(null=True);
    butuh_lemak = models.FloatField(null=True);
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
class RencanaDiet(models.Model):
    
    user = models.ForeignKey(User, related_name="user",on_delete=models.CASCADE)
    tanggal = created_at = models.DateTimeField(auto_now_add=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
class Olahraga(models.Model):
    
    rencana_diet = models.ForeignKey(RencanaDiet, related_name="rencana_diet_olahraga",on_delete=models.CASCADE)
    nama = models.CharField(max_length=50,null=True);
    status = models.IntegerField(choices=Status.choices, default=Status.INCOMPLETE)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
class Minum(models.Model):
    
    rencana_diet = models.ForeignKey(RencanaDiet, related_name="rencana_diet_minum",on_delete=models.CASCADE)
    jumlah_minum = models.IntegerField();
    banyak_minum = models.IntegerField();
    progress = models.IntegerField();
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Makanan(models.Model):
    
    nama = models.CharField(max_length=50)
    porsi = models.IntegerField()
    protein = models.IntegerField()
    lemak = models.IntegerField()
    karbo = models.IntegerField()
    energi = models.IntegerField()
    jenis = models.CharField(max_length=2, choices=JenisMakanan.choices, default=JenisMakanan.MENU)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    

class BahanMakanan(models.Model):
    
    menu_makanan = models.ForeignKey(Makanan, related_name="menu_makanan",on_delete=models.CASCADE)
    bahan_makanan = models.ForeignKey(Makanan, related_name="bahan_makanan",on_delete=models.CASCADE)
    berat = models.IntegerField(null=True)
    satuan = models.CharField(max_length=2, choices=JenisSatuan.choices, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
class MakananFoto(models.Model):
    
    makanan = models.ForeignKey(Makanan, related_name="makanan_foto",on_delete=models.CASCADE)
    path = models.CharField(max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
class PreferensiMakanan(models.Model):
    
    user = models.ForeignKey(User, related_name="preferensi_user",on_delete=models.CASCADE)
    makanan = models.ForeignKey(Makanan, related_name="preferensi_makanan",on_delete=models.CASCADE)
    jenis = models.CharField(max_length=2, choices=JenisPreferensiMakanan.choices, default=JenisPreferensiMakanan.FAVORIT)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
class MakananDiet(models.Model):
    
    rencana_diet = models.ForeignKey(RencanaDiet, related_name="rencana_diet_makanan",on_delete=models.CASCADE)
    makanan = models.ForeignKey(Makanan, related_name="rencana_makanan",on_delete=models.CASCADE)
    waktu_makan = models.CharField(max_length=2, choices=WaktuMakan.choices, default=WaktuMakan.PAGI)
    status = models.IntegerField(choices=Status.choices, default=Status.INCOMPLETE)

class RiwayatRekomendasiRencanaDiet(models.Model):
    
    user = models.ForeignKey(User, related_name="riwayat_rekomendasi_user",on_delete=models.CASCADE)
    berat_badan = models.FloatField(null=True);
    tinggi_badan = models.FloatField(null=True);
    usia = models.IntegerField(null=True);
    gender = models.CharField(max_length=2, choices=Gender.choices, default=Gender.PEREMPUAN)
    imt = models.FloatField(null=True);
    keseluruhan_energi = models.FloatField(null=True);
    butuh_protein = models.FloatField(null=True);
    butuh_karbo = models.FloatField(null=True);
    butuh_lemak = models.FloatField(null=True);
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class RekomendasiRencanaDiet(models.Model):
    
    riwayat_rekomendasi = models.ForeignKey(RiwayatRekomendasiRencanaDiet, related_name="riwayat_rekomendasi_rencana_diet",on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
class RekomendasiMakananDiet(models.Model):
    
    rekomendasi_rencana_diet = models.ForeignKey(RekomendasiRencanaDiet, related_name="rekomendasi_rencana_diet",on_delete=models.CASCADE)
    makanan = models.ForeignKey(Makanan, related_name="rekomendasi_makanan",on_delete=models.CASCADE)
    waktu_makan = models.CharField(max_length=2, choices=WaktuMakan.choices, default=WaktuMakan.PAGI)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    