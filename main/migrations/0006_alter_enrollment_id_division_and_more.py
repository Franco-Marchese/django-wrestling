# Generated by Django 4.1.3 on 2022-11-24 14:56

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("main", "0005_emergency_contact_remove_event_id_place_and_more"),
    ]

    operations = [
        migrations.AlterField(
            model_name="enrollment",
            name="id_division",
            field=models.ForeignKey(
                default=0,
                on_delete=django.db.models.deletion.CASCADE,
                to="main.division",
            ),
        ),
        migrations.AlterField(
            model_name="enrollment",
            name="id_student",
            field=models.ForeignKey(
                default=0,
                on_delete=django.db.models.deletion.CASCADE,
                to="main.student",
            ),
        ),
    ]
