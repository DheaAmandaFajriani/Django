# Generated by Django 5.1.2 on 2024-11-07 04:38

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('connectdb', '0012_alter_kelas_table'),
    ]

    operations = [
        migrations.AddField(
            model_name='kontrak',
            name='id_kelas',
            field=models.ForeignKey(default=0, on_delete=django.db.models.deletion.CASCADE, related_name='kontrak', to='connectdb.kelas'),
        ),
    ]
