# Generated by Django 5.1.2 on 2024-11-07 06:38

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('connectdb', '0016_alter_kontrak_id_dosen_alter_kontrak_id_kelas_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='kontrak',
            name='id_dosen',
        ),
        migrations.RemoveField(
            model_name='kontrak',
            name='id_matkul',
        ),
    ]
