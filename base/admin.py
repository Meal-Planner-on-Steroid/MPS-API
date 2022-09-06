from django.contrib import admin
from base.models import BahanMakanan, Makanan, MakananDiet, MakananFoto, Minum, Olahraga, PreferensiMakanan, RekomendasiMakananDiet, RekomendasiRencanaDiet, RencanaDiet, RiwayatRekomendasiRencanaDiet, Satuan, UserProfile, TingkatAktivitas

# Register your models here.
admin.site.register(UserProfile)
admin.site.register(TingkatAktivitas)
admin.site.register(RencanaDiet)
admin.site.register(Olahraga)
admin.site.register(Minum)
admin.site.register(Satuan)
admin.site.register(Makanan)
admin.site.register(BahanMakanan)
admin.site.register(MakananFoto)
admin.site.register(PreferensiMakanan)
admin.site.register(MakananDiet)
admin.site.register(RiwayatRekomendasiRencanaDiet)
admin.site.register(RekomendasiRencanaDiet)
admin.site.register(RekomendasiMakananDiet)