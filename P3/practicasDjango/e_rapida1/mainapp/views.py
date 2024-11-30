from django.shortcuts import render, HttpResponse

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
        'content': 'Somos un grupo de desarrolladores de SW Multiplataforma',
        'mensaje': mensaje
    })

def mision (request):
    return render (request, 'mainapp/mision.html', {
        'title': 'Nuestra Misión',
        'content': 'Nuestra misión es crear SW de alto nivel',
    })

def vision (request):
    return render (request, 'mainapp/mision.html', {
        'title': 'Nuestra Visión',
        'content': 'La visión que tenemos es desarrollar los mejores SW'
    })