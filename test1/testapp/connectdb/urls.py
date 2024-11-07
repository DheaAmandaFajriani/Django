from django.urls import path
from.import views

urlpatterns=[
    path('', views.matkul, name='matkul'),
    path('dosen', views.dosen, name='dosen'),
    path('kontrak',views.kontrak, name='kontrakk'),
    path('mhs', views.mhs, name='mhsa'),
    path('matkul', views.matkul, name='matkul'),
    path('addkelas', views.addkelas, name='addkelas'),
    path('adddosen', views.adddosen, name='adddosen'),
    path('addmhs', views.addmhs, name='addmhs'),
    path('addkontrak', views.addkontrak, name='addkontrak'),
    path('load_cities/',views.load_cities, name='load_cities'),


]