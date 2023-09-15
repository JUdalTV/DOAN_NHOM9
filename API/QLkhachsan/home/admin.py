from django.contrib import admin
from .models import TaiKhoan

# Register your models here.

class TaiKhoanAdmin(admin.ModelAdmin):
    list_display = ('taikhoan', 'matkhau', )