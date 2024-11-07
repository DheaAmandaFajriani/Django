from django.shortcuts import render, redirect
from django.db import models
from connectdb.form import matkulForm, dosenForm, mhsform, kontrakForm
from connectdb.models import Matkul, Dosen, Mahasiswaa, Kontrak



# Create your views here.

def matkul(request):
    matkul=Matkul.objects.all() 
    return render(request, 'matkul.html',{'matkul2':matkul})

def dosen(request):
     Doseen=Dosen.objects.all() 
     return render(request, 'dosen.html',{'doseen':Doseen})

def mhs(request):
    mhs=Mahasiswaa.objects.all()
    return render(request, 'mhs.html',{'mhsa':mhs})

def kontrak(request):
    kontrak=Kontrak.objects.all()
    return render(request, 'kontrak.html',{'kontrak':kontrak})

def addkelas(request):
    if request.method =="POST":
        form = matkulForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('matkul')
            except:
                pass
    else:
        form = matkulForm()
    return render(request, 'addkelas.html',{'form':form})

def adddosen(request):
    if request.method == "POST":
        form = dosenForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/dosen')
            except:
                pass
    else:
        form = dosenForm()
    return render(request, 'adddosen.html',{'form':form})

def addmhs(request):
    if request.method == "POST":
        form = mhsform(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/mhs')
            except:
                pass
    else:
        form = mhsform()
    return render(request, 'addmhs.html',{'form':form})

def addkontrak(request):
    if request.method == "POST":
        form = kontrakForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/kontrak')
            except:
                pass
    else:
        form = kontrakForm()
    return render(request, 'addkontrak.html',{'form':form})


def load_cities(request):
    dosen_id = request.GET.get('id_dosen')
    matkula = Matkul.objects.filter(dosen_id=dosen_id)
    return render(request, 'city_dropdown_list_options.html',{'matkula': matkula})

  



