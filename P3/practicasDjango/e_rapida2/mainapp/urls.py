from django.urls import path
from mainapp import views

urlpatterns = [
    path('inicio/', views.index, name='inicio'),
    path('acercade/', views.about, name='acercade'),
    path('mision/', views.mision, name='mision'),
    path('vision/', views.vision, name='vision'),    
    path('login/', views.login_user, name='login'),
    path('registro/', views.register_user, name='registro'),
]