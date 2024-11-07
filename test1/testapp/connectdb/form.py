from typing import Any, Mapping
from django import forms
from django.core.files.base import File
from django.db.models.base import Model
from django.forms.utils import ErrorList
from connectdb.models import Matkul, Dosen, Mahasiswaa, Kontrak, Kelas

class matkulForm(forms.ModelForm):
  class Meta:
    db_table = 'presensi'
    managed = True
    model = Matkul
    fields = ['id_matkul','nama' ]
    widgets = {'id_matkul' : forms.NumberInput,
                'nama' : forms.TextInput,
               }

class dosenForm(forms.ModelForm):
  class Meta:
    db_table = 'presensi'
    managed = True
    model = Dosen
    fields = ['id_dosen', 'nama']
    widgets = {'id_dosen' : forms.NumberInput,
                'nama' : forms.TextInput,
               }
    
class mhsform(forms.ModelForm):
  class  Meta:
    db_table = 'presensi'
    managed = True
    model = Mahasiswaa
    fields = ['nim', 'nokartu', 'nama']
    widgets = {'nim' : forms.NumberInput, 
                'nokartu' : forms.NumberInput,
                'nama' : forms.TextInput,
                }
    
class kontrakForm(forms.ModelForm):
    id_kontrak = forms.NumberInput(),
    id_mhs= forms.Select(),
    id_kelas = forms.Select(),
    class Meta:
        model = Kontrak
        fields = ['id_kontrak', 'id_mhs','id_kelas']
        
        def __init__(self, *args, **kwargs):
           super().__init__(*args, **kwargs)
        
    #     # Awalnya queryset id_matkul diset kosong
    #     self.fields['id_matkul'].queryset = Matkul.objects.none()

    #     # Kondisi jika `id_dosen` ada di data POST atau GET
    #        if 'id_dosen' in self.data:
    # #         try:
    #                dosen_id = int(self.data.get('id_dosen'))
    # #             # Filter matkul berdasarkan dosen yang dipilih
    #                self.fields['id_matkul'].queryset = Matkul.objects.filter(dosen_id=dosen_id)
    #         except (ValueError, TypeError):
    #             pass  # Tangani kesalahan konversi ke int jika data `id_dosen` tidak valid

    #     # Kondisi untuk instance yang sudah ada
    #     elif self.instance.pk and self.instance.id_dosen:
    #         self.fields['id_matkul'].queryset = self.instance.id_dosen.matkul_set.order_by('nama')
