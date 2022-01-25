from django.urls import path
from . import api

urlpatterns = [
  path('clientapi/', api.api.urls)
]