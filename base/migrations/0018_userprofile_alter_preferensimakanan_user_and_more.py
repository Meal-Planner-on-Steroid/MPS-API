# Generated by Django 4.1 on 2022-09-05 13:17

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ("base", "0017_alter_bahanmakanan_berat_alter_makanan_berat_porsi_and_more"),
    ]

    operations = [
        migrations.CreateModel(
            name="UserProfile",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("avatar", models.CharField(max_length=100, null=True)),
                ("berat_badan", models.FloatField(null=True)),
                ("tinggi_badan", models.FloatField(null=True)),
                ("usia", models.IntegerField(null=True)),
                (
                    "gender",
                    models.CharField(
                        choices=[("PE", "PEREMPUAN"), ("LA", "LAKI")],
                        default="PE",
                        max_length=2,
                    ),
                ),
                ("imt", models.FloatField(null=True)),
                ("keseluruhan_energi", models.FloatField(null=True)),
                ("butuh_protein", models.FloatField(null=True)),
                ("butuh_karbo", models.FloatField(null=True)),
                ("butuh_lemak", models.FloatField(null=True)),
                ("created_at", models.DateTimeField(auto_now_add=True)),
                ("updated_at", models.DateTimeField(auto_now=True)),
                (
                    "tingkat_aktivitas",
                    models.ForeignKey(
                        null=True,
                        on_delete=django.db.models.deletion.SET_NULL,
                        related_name="tingkat_aktivitas",
                        to="base.tingkataktivitas",
                    ),
                ),
                (
                    "user",
                    models.OneToOneField(
                        on_delete=django.db.models.deletion.CASCADE,
                        to=settings.AUTH_USER_MODEL,
                    ),
                ),
            ],
        ),
        migrations.AlterField(
            model_name="preferensimakanan",
            name="user",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                related_name="preferensi_user",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AlterField(
            model_name="rencanadiet",
            name="user",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                related_name="user",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AlterField(
            model_name="riwayatrekomendasirencanadiet",
            name="user",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                related_name="riwayat_rekomendasi_user",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.DeleteModel(
            name="User",
        ),
    ]