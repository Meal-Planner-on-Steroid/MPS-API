# Generated by Django 4.1 on 2022-09-12 11:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("base", "0019_remove_makananfoto_path_makananfoto_foto"),
    ]

    operations = [
        migrations.AlterField(
            model_name="tingkataktivitas",
            name="nilai",
            field=models.FloatField(),
        ),
    ]
