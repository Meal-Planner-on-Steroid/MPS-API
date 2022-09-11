# Generated by Django 4.1 on 2022-09-09 13:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("base", "0018_userprofile_alter_preferensimakanan_user_and_more"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="makananfoto",
            name="path",
        ),
        migrations.AddField(
            model_name="makananfoto",
            name="foto",
            field=models.FileField(default="none", upload_to="images/"),
        ),
    ]