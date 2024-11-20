"""
URL configuration for test2 project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from database import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home, name='home'),
    path('dosen2', views.dosen2, name='dosen2'),
    path('kontrak2',views.kontrak2, name='kontrak2'),
    path('mhs2', views.mhs2, name='mhsa2'),
    path('matkul2', views.matkul2, name='matkul2'),
    path('kelas2',views.kelas2, name='kelas2'),
    path("tambah_kehadiran/", views.tambah_kehadiran, name="tambah_kehadiran"),
    # path('addkelas2', views.addkelas2, name='addkelas2'),
    # path('load_cities/',views.load_cities, name='load_cities'),
    # path('addmhs2', views.addmhs2, name='addmhs2'),
    # path('mhs2', views.addmhs21, name='mhs2'),
    # path('addmatkul2', views.addmatkul2, name='addmatkul2'),
    # path('addkontrak2', views.addkontrak2, name='addkontrak2'),
    # path('adddosen2', views.adddosen2, name='adddosen2'),
]
