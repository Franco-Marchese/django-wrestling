# Generated by Django 4.1.2 on 2022-10-22 18:48

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='NEWS',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30)),
                ('article', models.CharField(max_length=200)),
                ('date', models.DateField()),
                ('img', models.ImageField(upload_to='')),
            ],
        ),
    ]
