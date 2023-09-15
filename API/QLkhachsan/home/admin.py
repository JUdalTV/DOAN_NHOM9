from django.contrib import admin
from .models import TaiKhoan

# Register your models here.

class TaiKhoanAdmin(admin.ModelAdmin):
    list_display = ('ID', 'taikhoan', 'matkhau', 'gmail', 'thoiquen', 'diachi', 'thoigian')
    search_fields = ('ID', 'taikhoan', 'matkhau', 'gmail')
admin.site.register(TaiKhoan, TaiKhoanAdmin)