# Generated by Django 4.1.3 on 2022-12-06 21:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("main", "0009_alter_club_cellphone_alter_club_email_and_more"),
    ]

    operations = [
        migrations.AlterField(
            model_name="club",
            name="cellphone",
            field=models.IntegerField(blank=True, default=None),
        ),
        migrations.AlterField(
            model_name="club",
            name="email",
            field=models.EmailField(blank=True, default=None, max_length=254),
        ),
        migrations.AlterField(
            model_name="club",
            name="instagram",
            field=models.URLField(blank=True, default=None),
        ),
    ]
