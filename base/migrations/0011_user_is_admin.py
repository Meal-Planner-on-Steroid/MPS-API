# Generated by Django 4.1 on 2022-08-17 00:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("base", "0010_riwayatrekomendasirencanadiet_rekomendasirencanadiet_and_more"),
    ]

    operations = [
        migrations.AddField(
            model_name="user",
            name="is_admin",
            field=models.BooleanField(default=False),
        ),
    ]
