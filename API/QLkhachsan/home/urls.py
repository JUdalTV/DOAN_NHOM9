from django.urls import path,re_path, include
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

from drf_spectacular.views import SpectacularAPIView, SpectacularSwaggerView


urlpatterns = [
    path('taikhoan/', views.taikhoan),
    path('taikhoan_detail/<str:pk>/', views.taikhoan_detail),
    path('api/schema/',SpectacularAPIView.as_view(), name='schema'),
    path('', SpectacularSwaggerView.as_view(url_name='schema'), name='swagger-ui')

]