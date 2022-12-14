# Generated by Django 4.1 on 2022-08-24 02:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("base", "0011_user_is_admin"),
    ]

    operations = [
        migrations.CreateModel(
            name="Satuan",
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
                ("nama", models.CharField(max_length=20)),
            ],
        ),
        migrations.AddField(
            model_name="makanan",
            name="berat_porsi",
            field=models.IntegerField(null=True),
        ),
        migrations.AddField(
            model_name="makanan",
            name="sumber",
            field=models.CharField(max_length=200, null=True),
        ),
        migrations.AddField(
            model_name="makanan",
            name="besar_porsi",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.SET_NULL,
                related_name="satuan_porsi",
                to="base.satuan",
            ),
        ),
        migrations.AlterField(
            model_name="bahanmakanan",
            name="satuan",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.SET_NULL,
                related_name="satuan_bahan",
                to="base.satuan",
            ),
        ),
    ]
