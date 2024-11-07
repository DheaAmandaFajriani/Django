from django.db import models

# Create your models here.

class Dosen(models.Model):
    id_dosen= models.IntegerField(primary_key=True)
    nama= models.CharField(max_length=200)

    class Meta :
        db_table="dosen"

    def __str__(self):
        return self.nama 

# class Matkulaja(models.Model):
#     dosennya= models.ForeignKey(Dosen, on_delete=models.CASCADE)
#     nama= models.CharField(max_length=100)

class Matkul(models.Model):
    id_matkul= models.IntegerField(primary_key=True)
    nama= models.CharField(max_length=100)

    class Meta :
        db_table="matkul"

    def __str__(self):
        return self.nama 
    

class Mahasiswaa(models.Model):
    nim= models.IntegerField(primary_key=True)
    nokartu= models.IntegerField(10)
    nama= models.CharField(max_length=200)

    class Meta :
        db_table="mahasiswaa"

    def __str__(self):
        return self.nama

class Kelas(models.Model):
    id_kelas= models.IntegerField(primary_key=True)
    id_matkul=models.ForeignKey(Matkul,on_delete=models.CASCADE, related_name='kelas')
    id_dosen=models.ForeignKey(Dosen,on_delete=models.CASCADE,related_name='kelas')
    nm_kelas=models.CharField(max_length=100)

    class Meta :
        db_table="kelas"
    
    def __str__(self):
        return self.nm_kelas


class Kontrak(models.Model):
    id_kontrak= models.IntegerField(primary_key=True)
    id_mhs= models.ForeignKey(Mahasiswaa,on_delete=models.CASCADE)
    id_kelas= models.ForeignKey(Kelas,on_delete=models.CASCADE)

    class Meta :
        db_table="kontrak"
    
    # def __str__(self):
    #     return self.id_kontrak
    
