# Generated by Django 4.1.3 on 2022-12-16 16:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("main", "0011_remove_club_cellphone_remove_club_email_and_more"),
    ]

    operations = [
        migrations.RemoveField(model_name="news", name="img",),
    ]