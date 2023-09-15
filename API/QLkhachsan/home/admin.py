from django.contrib import admin
from .models import Users, Master, Hoptel, Phong

# Register your models here.

class UsersAdmin(admin.ModelAdmin):
    list_display = ('sdtkh', 'matkhau', )