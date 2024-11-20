from django.db import models


# Create your models here.

class Dosen2(models.Model):
    id_dosen= models.IntegerField(primary_key=True)
    nama= models.CharField(max_length=200)

    class Meta :
        db_table="dosen2"

    def __str__(self):
        return self.nama 

# class Matkulaja(models.Model):
#     dosennya= models.ForeignKey(Dosen, on_delete=models.CASCADE)
#     nama= models.CharField(max_length=100)

class Matkul2(models.Model):
    id_matkul= models.IntegerField(primary_key=True)
    nama= models.CharField(max_length=100)

    class Meta :
        db_table="matkul2"

    def __str__(self):
        return self.nama 
    

class Mahasiswaa2(models.Model):
    nim= models.IntegerField(primary_key=True)
    nokartu= models.IntegerField(10)
    nama= models.CharField(max_length=200)

    class Meta :
        db_table="mahasiswaa2"

    def __str__(self):
        return self.nama

class Kelas2(models.Model):
    id_kelas= models.IntegerField(primary_key=True)
    id_matkul=models.ForeignKey(Matkul2,on_delete=models.CASCADE)
    id_dosen=models.ForeignKey(Dosen2,on_delete=models.CASCADE)
    nm_kelas=models.CharField(max_length=100)

    class Meta :
        db_table="kelas2"
    
    def __str__(self):
        return self.nm_kelas


class Kontrak2(models.Model):
    id_kontrak= models.IntegerField(primary_key=True)
    id_mhs= models.ForeignKey(Mahasiswaa2,on_delete=models.CASCADE)
    id_kelas= models.ForeignKey(Kelas2,on_delete=models.CASCADE)

    class Meta :
        db_table="kontrak2"
    
    # def __str__(self):
    #     return self.id_kontrak

class Kehadiran(models.Model):
    id_kehdiran= models.AutoField(primary_key=True)
    id_kelas= models.ForeignKey(Kelas2,on_delete=models.CASCADE)
    id_mhs= models.ForeignKey(Mahasiswaa2,on_delete=models.CASCADE)
    tanggal= models.DateField(auto_now_add=True)
    keterangan=models.IntegerField()

    class Meta:
        db_table = 'kehadiran'
    
