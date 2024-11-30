from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from articulos.models import Article,Category
# Create your views here.


@login_required(login_url='inicio')
def list_art(request):

    #Sacar articulos de la BD
    articulos = Article.objects.all()

    return render(request, 'articulos/listado_art.html',{
        'title': 'Artículos',
        'content': 'Listado de Artículos',
        'articulos': articulos,
    })

@login_required(login_url='inicio')
def list_cat(request):

    #Sacar categorias de la BD
    categorias = Category.objects.all()

    return render(request, 'categorias/listado_cat.html',{
        'title': 'Categorías',
        'content': 'Listado de Categorías',
        'categorias': categorias,
    }) 