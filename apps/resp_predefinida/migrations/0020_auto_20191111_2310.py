# Generated by Django 2.2.3 on 2019-11-12 03:10

import apps.resp_predefinida.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('resp_predefinida', '0019_auto_20191110_1453'),
    ]

    operations = [
        migrations.AlterField(
            model_name='respuestapredefinida',
            name='codRespuestaP',
            field=models.CharField(default=apps.resp_predefinida.models.RespuestaPredefinida.codRespuestaP, max_length=8, primary_key=True, serialize=False),
        ),
    ]
