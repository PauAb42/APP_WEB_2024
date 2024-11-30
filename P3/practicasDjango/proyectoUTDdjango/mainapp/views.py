from django.shortcuts import render, redirect
#from django.contrib.auth.forms import UserCreationForm
from mainapp.forms import RegisterForm
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.contrib.auth.decorators import login_required
 

# Create your views here.

def index(requets):
    return render(requets,'mainapp/index.html', {
        'title': 'Inicio',
        'content' : '.:: ¡Bienvenido a mi pagina de Inicio! ::.'
    })
 
@login_required(login_url='inicio')
def about (request):
    return render (request, 'mainapp/about.html', {
        'title': 'Acerca de Nosotros',
        'content': 'Soy Acerca de Nosotros',
    })

@login_required(login_url='inicio')
def mision (request):
    return render (request, 'mainapp/mision.html', {
        'title': 'Misión',
        'content': 'Soy Misión',
    })

@login_required(login_url='inicio')
def vision (request):
    return render (request, 'mainapp/vision.html', {
        'title': 'Visión',
        'content': 'Soy Visión',
    })

def redirigir_inicio(request, exception):
    return render(request,'mainapp/404.html')

def register_user (request):

    if request.user.is_authenticated:
        return redirect('inicio')
    else:
        register_form = RegisterForm()
        if request.method == 'POST':
            register_form = RegisterForm(request.POST)
            if register_form.is_valid():
                register_form.save()
                messages.success(request, '=¡Registro con Éxito!=')
                return redirect('inicio')


    return render (request, 'users/register.html', {
        'title': 'Registro de Usuario',
        'register_form': register_form
    })

def login_user (request):
    if request.user.is_authenticated:
        return redirect('inicio')
    else:
        if request.method == 'POST':
            username = request.POST.get('username')
            password = request.POST.get('password')
            user = authenticate(request,username=username, password=password)

            if user is not None:
                login(request, user)
                messages.success(request, '¡Bienvenido al Inicio de Sesión!')
                return redirect('inicio')
            else:
                messages.warning(request, 'No es posible inicar sesión, por favor ingresa tus credenciales de acceso')
        
        return render (request, 'users/login.html', {
        'title': 'Inicio de Sesión',
    })

def logout_user (request):
    logout(request)
    return redirect('login')