# Generated by Django 4.1.2 on 2022-10-22 19:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='article',
            field=models.CharField(max_length=1000),
        ),
        migrations.AlterField(
            model_name='news',
            name='title',
            field=models.CharField(max_length=200),
        ),
    ]
