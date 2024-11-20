from django.shortcuts import render, redirect
from django.db import models
from database.models import Matkul2, Mahasiswaa2, Kelas2, Kontrak2, Dosen2, Kehadiran
from database.form import  dosenForm2, matkulForm2, kontrakForm2, kelasForm2, filterkontrakform, mhsform21
from datetime import date
from django.http import HttpResponse

# Create your views here.
#buat filter
kontrak_list=[]
def home(request):
  
    matakuliah = request.GET.get('matakuliah', '')
    kelas = request.GET.get('kelas', '')
    dosen = request.GET.get('dosen', '')

    # Mulai dengan semua data kontrak
    kontrak_list = Kontrak2.objects.all()

    # Filter berdasarkan mata kuliah jika ada
    if matakuliah:
        kontrak_list = kontrak_list.filter(id_kelas__id_matkul__nama__icontains=matakuliah)

    # Filter berdasarkan kelas jika ada
    if kelas:
        kontrak_list = kontrak_list.filter(id_kelas__nm_kelas__icontains=kelas)

    # Filter berdasarkan dosen jika ada
    if dosen:
        kontrak_list = kontrak_list.filter(id_kelas__id_dosen__nama__icontains=dosen)

    # ambil data dari table dan menampilkan di html
    matkul=Matkul2.objects.all() 
    kelas=Kelas2.objects.all()
    Doseen=Dosen2.objects.all() 
    
    return render(request, 'home.html', {'kontrak_list': kontrak_list , 'matkul2':matkul , 'kelass' : kelas , 'doseen':Doseen})

def tambah_kehadiran(request):
     if request.method == "POST":
        print("POST Data:", request.POST)  # Debugging data POST
        #ambil nilai dari form
        id_kelas = request.POST.get("id_kelas")
        id_mhs = request.POST.get("id_mhs")
        keterangan = request.POST.get("keterangan")

        #print di terminal untuk validasi
        print(f"id_kelas: {id_kelas}, id_mhs: {id_mhs}, keterangan: {keterangan}")

        #periksa apakah id kelas dan mhs ada isinya semua
        if not id_kelas or not id_mhs:
            return HttpResponse("Data tidak lengkap.", status=400)

        try:
            # Ambil objek dari database
            kelas = Kelas2.objects.get(id_kelas=id_kelas)
            mahasiswa = Mahasiswaa2.objects.get(nim=id_mhs)

            # Tambahkan data ke tabel Kehadiran
            Kehadiran.objects.create(
                id_kelas=kelas,
                id_mhs=mahasiswa,
                tanggal=date.today(),
                keterangan=int(keterangan)
            )
            return redirect('/', {'kontrak_list': kontrak_list})

        #penanganan eror 
        except Kelas2.DoesNotExist:
            return HttpResponse("Kelas tidak ditemukan.", status=404)
        except Mahasiswaa2.DoesNotExist:
            return HttpResponse("Mahasiswa tidak ditemukan.", status=404)
        except Exception as e:
            return HttpResponse(f"Error: {str(e)}", status=500)

     return HttpResponse("Metode tidak diizinkan.", status=405)


def matkul2(request):
     if request.method =="POST":
        form = matkulForm2(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/matkul2')
            except:
                pass
     else:
        form = matkulForm2()

     matkul=Matkul2.objects.all() 
     return render(request, 'matkul2.html',{'matkul2':matkul , 'form':form})


def dosen2(request):
     if request.method == "POST":
        form = dosenForm2(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/dosen2')
            except:
                pass
     else:
        form = dosenForm2()
     Doseen=Dosen2.objects.all() 
     return render(request, 'dosen2.html',{'doseen':Doseen , 'form':form})

def mhs2(request):
     if request.method == "POST":
        form = mhsform21(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/mhs2')
            except:
                pass
     else:
        form = mhsform21()

     mhs=Mahasiswaa2.objects.all()
     return render(request, 'mhs2.html',{'mhsa':mhs , 'formm':form})

def kontrak2(request):
     if request.method == "POST":
        form = kontrakForm2(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/kontrak2')
            except:
                pass
     else:
        form = kontrakForm2()
     kontrak=Kontrak2.objects.all()
     mhs=Mahasiswaa2.objects.all()
     kelas=Kelas2.objects.all()
     return render(request, 'kontrak2.html',{'kontrak':kontrak , 'mhsa':mhs , 'kelass' : kelas , 'form':form })

def kelas2(request):
     if request.method == "POST":
        form = kelasForm2(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/kelas2')
            except:
                pass
     else:
        form = kelasForm2()
     kelas=Kelas2.objects.all()
     matkul=Matkul2.objects.all()
     Doseen=Dosen2.objects.all() 
     return render(request, 'kelas2.html', {'kelass' : kelas , 'doseen':Doseen , 'matkul2':matkul , 'form':form})


# def addkelas2(request):
#     if request.method == "POST":
#         form = kelasForm2(request.POST)
#         if form.is_valid():
#             try:
#                 form.save()
#                 return redirect('/kelas2')
#             except:
#                 pass
#     else:
#         form = kelasForm2()
#     return render(request, 'addkelas2.html',{'form':form})


# def home2(request):
#     kontraklist = Kontrak2.objects.select_related( 'id_mhs', 'id_kelas_id__dosen', 'id_kelas__nama')
#     matakuliah = request.GET.get('matakuliah')
#     kelas = request.GET.get('kelas')
#     dosen = request.GET.get('dosen')

#     if matakuliah !='' and matakuliah is not None:
#         kontraklist = kontraklist.filter(matakuliah=matakuliah)

#     elif kelas !='' and kelas is not None:
#         kontraklist = kontraklist.filter(id_kelas_namakelas=kelas)

#     elif dosen !='' and dosen is not None:
#         kontraklist = kontraklist.filter(id_kelas_dosen=dosen)
    
#     context ={
#         'query': kontraklist
#     }

    
#     return render(request, 'home.html', context)


# def addmhs2(request):
#     if request.method == "POST":
#         form = mhsform2(request.POST)
#         if form.is_valid():
#             try:
#                 form.save()
#                 return redirect('/mhs2')
#             except:
#                 pass
#     else:
#         form = mhsform2()
#     return render(request, 'addmhs2.html',{'form':form})


# def addmatkul2(request):
#     if request.method =="POST":
#         form = matkulForm2(request.POST)
#         if form.is_valid():
#             try:
#                 form.save()
#                 return redirect('matkul2')
#             except:
#                 pass
#     else:
#         form = matkulForm2()
#     return render(request, 'addmatkul2.html',{'form':form})

# def addkontrak2(request):
#     if request.method == "POST":
#         form = kontrakForm2(request.POST)
#         if form.is_valid():
#             try:
#                 form.save()
#                 return redirect('/kontrak2')
#             except:
#                 pass
#     else:
#         form = kontrakForm2()
#     return render(request, 'addkontrak2.html',{'form':form})

# def adddosen2(request):
#     if request.method == "POST":
#         form = dosenForm2(request.POST)
#         if form.is_valid():
#             try:
#                 form.save()
#                 return redirect('/dosen2')
#             except:
#                 pass
#     else:
#         form = dosenForm2()
#     return render(request, 'adddosen2.html',{'form':form})


