from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import TaiKhoan
from .serializers import TaiKhoanSerializer
from rest_framework import status

@api_view(['GET', 'POST'])
def taikhoan(request, response):
    if request.method == 'GET':
        taikhoan = TaiKhoan.objects.all()
        serializers =TaiKhoanSerializer(taikhoan, many=True)
        return Response
    elif request.method == 'POST':
        serializers =TaiKhoanSerializer(data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response(serializers.data, status=status.HTTP_201_CREATED)
        return Response(serializers.data, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def taikhoan_detail(request, pk):
    try:
        taikhoan = TaiKhoan.objects.get(pk=pk)

    except TaiKhoan.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    if request.method == 'GET':
        serializers = TaiKhoanSerializer(taikhoan)
        return Response(serializers.data)
    elif request.method == 'PUT':
        serializers =TaiKhoanSerializer(taikhoan, data=request.data)
        if serializers.is_valid():
            serializers.save()
            return Response(serializers.data)
        return Response(serializers.erros, status=status.HTTP_400_BAD_REQUEST)
    elif request.method == 'DELETE':
        taikhoan.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)