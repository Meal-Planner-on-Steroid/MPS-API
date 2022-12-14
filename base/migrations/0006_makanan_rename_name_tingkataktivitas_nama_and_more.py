# Generated by Django 4.1 on 2022-08-15 01:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("base", "0005_rencanadiet_olahraga_minum"),
    ]

    operations = [
        migrations.CreateModel(
            name="Makanan",
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
                ("nama", models.CharField(max_length=50)),
                ("porsi", models.IntegerField()),
                ("protein", models.IntegerField()),
                ("lemak", models.IntegerField()),
                ("karbo", models.IntegerField()),
                ("energi", models.IntegerField()),
                (
                    "jenis",
                    models.CharField(
                        choices=[("ME", "MENU"), ("BA", "BAHAN"), ("CA", "CAMILAN")],
                        default="ME",
                        max_length=2,
                    ),
                ),
                ("created_at", models.DateTimeField(auto_now_add=True)),
                ("updated_at", models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.RenameField(
            model_name="tingkataktivitas",
            old_name="name",
            new_name="nama",
        ),
        migrations.RenameField(
            model_name="user",
            old_name="name",
            new_name="nama",
        ),
        migrations.CreateModel(
            name="MakananFoto",
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
                ("path", models.CharField(max_length=100)),
                ("created_at", models.DateTimeField(auto_now_add=True)),
                ("updated_at", models.DateTimeField(auto_now=True)),
                (
                    "makanan",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="makanan_foto",
                        to="base.makanan",
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="BahanMakanan",
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
                ("berat", models.IntegerField(null=True)),
                (
                    "satuan",
                    models.CharField(
                        choices=[
                            ("GR", "GRAM"),
                            ("KG", "KILOGRAM"),
                            ("ML", "MILILITER"),
                            ("LI", "LITER"),
                        ],
                        max_length=2,
                        null=True,
                    ),
                ),
                (
                    "bahan_makanan",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="bahan_makanan",
                        to="base.makanan",
                    ),
                ),
                (
                    "menu_makanan",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="menu_makanan",
                        to="base.makanan",
                    ),
                ),
            ],
        ),
    ]
