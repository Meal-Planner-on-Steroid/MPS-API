from django.db import models
from django.utils.translation import gettext_lazy as _

# Create your models here.
class Gender(models.TextChoices):
    PEREMPUAN = 'PE', _('PEREMPUAN')
    LAKI = 'LA', _('LAKI')
    
class TingkatAktivitas(models.Model):
    
    name = models.CharField(max_length=100)
    gender = models.CharField(max_length=2, choices=Gender.choices, default=Gender.PEREMPUAN)
    nilai = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
class User(models.Model):
        
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=50)
    password = models.CharField(max_length=450)
    gender = models.CharField(max_length=2, choices=Gender.choices, default=Gender.PEREMPUAN)
    tingkat_aktivitas = models.ForeignKey(TingkatAktivitas, related_name="tingkat_aktivitas",on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    

