from django.shortcuts import render, redirect

# Create your views here.

def index(requets):
    return render(requets,'mainapp/index.html', {
        'title': 'Inicio',
        'content' : '.:: ¡Bienvenido a mi pagina de Inicio! ::.'
    })
 
def about (request):
    return render (request, 'mainapp/about.html', {
        'title': 'Acerca de Nosotros',
        'content': 'Soy Acerca de Nosotros',
    })
 
def mision (request):
    return render (request, 'mainapp/mision.html', {
        'title': 'Misión',
        'content': 'Soy Misión',
    })

def vision (request):
    return render (request, 'mainapp/vision.html', {
        'title': 'Visión',
        'content': 'Soy Visión',
    })

def redirigir_inicio(request, exception):
    return render(request,'mainapp/404.html')