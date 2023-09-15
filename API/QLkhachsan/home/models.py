from django.db import models

# Create your models here.
class TaiKhoan(models.Model):
    
    ID = models.CharField(max_length=10, primary_key=True)
    taikhoan = models.CharField(max_length=10,blank=False, null=False)
    matkhau = models.CharField(max_length=10,blank=False, null=False)
    gmail = models.CharField(max_length=30, blank=False, null=False)
    thoiquen = models.CharField(max_length=50, blank=False, null=False)
    diachi = models.CharField(max_length=50, blank=False, null=False)
    thoigian = models.DateTimeField()

    def __str__(self):
        return self.taikhoan