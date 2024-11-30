from django.contrib import admin
from .models import Category, Article

# Register your models here.

class CategoryAdmin(admin.ModelAdmin):
    readonly_fields = ('created_at', 'updated_at')
    search_fields = ('name', 'description')
    list_display = ('name', 'description', 'created_at')
    ordering = ('-created_at',)

class ArticleAdmin(admin.ModelAdmin):
    readonly_fields = ('created_at', 'updated_at')  # Elimina 'user' de aquí
    search_fields = ('title', 'content', 'user__username', 'categories__name')  # Corrige para buscar por nombre de usuario
    list_filter = ('public', 'user', 'categories')
    list_display = ('title', 'public', 'user', 'created_at')
    ordering = ('-created_at',)

    def save_model(self, request, obj, form, change):
        if not obj.user_id:  # Verifica si el usuario no está establecido
            obj.user = request.user  # Asigna el usuario actual
        super().save_model(request, obj, form, change)  # Llama al método de la clase base

admin.site.register(Category, CategoryAdmin)
admin.site.register(Article, ArticleAdmin)