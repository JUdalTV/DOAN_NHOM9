from rest_framework import serializers
from . models import TaiKhoan

class TaiKhoanSerializer(serializers.ModelSerializer):
    class Meta:
        models = TaiKhoan
        fileds = '__all__'