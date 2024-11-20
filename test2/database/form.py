from typing import Any, Mapping
from django import forms
from django.core.files.base import File
from django.db.models.base import Model
from django.forms.utils import ErrorList
from database.models import Matkul2, Mahasiswaa2, Kontrak2, Kelas2, Dosen2

# class mhsform2(forms.ModelForm):
#   class  Meta:
#     db_table = 'presensi2'
#     managed = True
#     model = Mahasiswaa2
#     fields = ['nim', 'nokartu', 'nama']
#     widgets = {'nim' : forms.NumberInput, 
#                 'nokartu' : forms.NumberInput,
#                 'nama' : forms.TextInput,
#                 }
    
class mhsform21(forms.ModelForm):
  class  Meta:
    db_table = 'presensi2'
    managed = True
    model = Mahasiswaa2
    fields = ['nim', 'nokartu', 'nama']
    widgets = {'nim' : forms.NumberInput, 
                'nokartu' : forms.NumberInput,
                'nama' : forms.TextInput,
                }
    
class matkulForm2(forms.ModelForm):
  class Meta:
    db_table = 'presensi2'
    managed = True
    model = Matkul2
    fields = ['id_matkul','nama' ]
    widgets = {'id_matkul' : forms.NumberInput,
                'nama' : forms.TextInput,
               }

class dosenForm2(forms.ModelForm):
  class Meta:
    db_table = 'presensi2'
    managed = True
    model = Dosen2
    fields = ['id_dosen', 'nama']
    widgets = {'id_dosen' : forms.NumberInput,
                'nama' : forms.TextInput,
               }
    

class kontrakForm2(forms.ModelForm):
    id_kontrak = forms.NumberInput(),
    id_mhs= forms.Select(),
    id_kelas = forms.Select(),
    class Meta:
        model = Kontrak2
        fields = ['id_kontrak', 'id_mhs','id_kelas']
        
        def __init__(self, *args, **kwargs):
           super().__init__(*args, **kwargs)

class kelasForm2(forms.ModelForm):
    id_kelas = forms.NumberInput(),
    id_matkul= forms.Select(),
    id_dosen = forms.Select(),
    nm_kelas = forms.TextInput(),
    class Meta:
        model = Kelas2
        fields = ['id_kelas', 'id_matkul', 'id_dosen', 'nm_kelas']
        
        def __init__(self, *args, **kwargs):
           super().__init__(*args, **kwargs)


class filterkontrakform(forms.Form):
   matakuliah = forms.ModelChoiceField(queryset=Matkul2.objects.all(), label="Pilih Mata Kuliah")
   kelas = forms.ModelChoiceField(queryset=Kelas2.objects.all(), required=False, label="Pilih Kelas...")
   dosen =forms.ModelChoiceField(queryset=Dosen2.objects.all(), required=False, label="Dosen Pengajar")

   
