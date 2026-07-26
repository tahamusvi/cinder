from django.urls import path
from core.views import heavy_computation

urlpatterns = [
    path('benchmark/', heavy_computation),
]