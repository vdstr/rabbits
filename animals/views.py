import json

from django.http import JsonResponse
from django.views.generic.base import View

from animals.services import PredatorMovement


class PredatorMovementView(View):
    @staticmethod
    def post(request):
        data = json.loads(request.body)
        code = data.get('code')
        latitude = data.get('latitude')
        longitude = data.get('longitude')

        response_data = PredatorMovement(code, latitude, longitude).get_response_data()

        return JsonResponse(response_data)
