"""
URL configuration for testapp project.

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
from django.urls import path, include
from connectdb import views
from connectdb import urls

urlpatterns = [
    path('admin/', admin.site.urls),
    path('connectdb/',include('connectdb.urls')),
    path('', views.matkul, name='matkul'),
    path('matkul', views.matkul, name='matkul'),
    path('dosen', views.dosen, name='dosen'),
    path('addkelas', views.addkelas, name='addkelas'),
    path('adddosen', views.adddosen, name='adddosen'),
    path('mhs', views.mhs, name='mhsa'),
    path('addmhs', views.addmhs, name='addmhs'),
    path('kontrak',views.kontrak, name='kontrakk'),
    path('addkontrak', views.addkontrak, name='addkontrak'),
     path('load_cities/',views.load_cities, name='load_cities'),
]
