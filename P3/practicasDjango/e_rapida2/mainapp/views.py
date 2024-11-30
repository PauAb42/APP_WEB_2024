from django.shortcuts import render, redirect
#from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.contrib.auth.decorators import login_required
 

# Create your views here.

def index(requets):
    return render(requets,'mainapp/index.html', {
        'title': 'Página Principal',
        'content' : '..:: ¡Bienvenido a mi Página Principal! ::..'
    })

def about (request):
    mensaje='Bienvenido mi Nombre es: Paulina Ale Breceda'
    return render (request, 'mainapp/about.html', {
        'title': 'Acerca de Nosotros',
        'content': 'Estudiante que quiere pasar la materia',
        'mensaje': mensaje
    })

def mision (request):
    return render (request, 'mainapp/mision.html', {
        'title': 'Misión',
        'content': 'Terminar la carrera',
    })

def vision (request):
    return render (request, 'mainapp/mision.html', {
        'title': 'Visión',
        'content': 'Ser un buen desarrollador de SW'
    })

def redirigir_inicio(request, exception):
    return render(request,'mainapp/404.html')

def register_user (request):
    return render (request, 'mainapp/mision.html', {
        'title': 'Visión',
        'content': 'Ser un buen desarrollador de SW'
    })

def login_user (request):
        return render (request, 'users/login.html', {
        'title': 'Inicio de Sesión',
    })