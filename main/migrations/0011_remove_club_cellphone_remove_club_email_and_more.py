# Generated by Django 4.1.3 on 2022-12-06 21:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("main", "0010_alter_club_cellphone_alter_club_email_and_more"),
    ]

    operations = [
        migrations.RemoveField(model_name="club", name="cellphone",),
        migrations.RemoveField(model_name="club", name="email",),
        migrations.RemoveField(model_name="club", name="imgA",),
        migrations.RemoveField(model_name="club", name="imgEvents",),
        migrations.RemoveField(model_name="club", name="imgSchedule",),
        migrations.RemoveField(model_name="club", name="instagram",),
    ]
