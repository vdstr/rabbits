from django.urls import path
from django.views.decorators.csrf import csrf_exempt

from animals.views import PredatorMovementView, FindRabbitsView

urlpatterns = [
    path(r'move', csrf_exempt(PredatorMovementView.as_view()), name='PredatorMovement'),
    path(r'rabbits', csrf_exempt(FindRabbitsView.as_view()), name='RabbitsView'),
]
