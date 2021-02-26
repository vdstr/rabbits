from django.test import TestCase

from animals.models import Animal, AnimalType
from animals.services import PredatorMovement


class TestPredatorMovement(TestCase):
    def setUp(self):
        self.wolf_type = AnimalType.objects.create(name='Wolf', is_predator=True)
        self.rabbit_type = AnimalType.objects.create(name='Rabbit', is_predator=False)
        self.predator = Animal.objects.create(
            name='Grey Wolf', animal_type=self.wolf_type, code=100, latitude=5, longitude=5, is_caught=False)
        for rabbit in range(10):
            Animal.objects.create(name=f'Rabbit{rabbit}', animal_type=self.rabbit_type, code=101+rabbit,
                                  latitude=1+rabbit, longitude=1+rabbit, is_caught=False)

    def test_get_rabbits(self):
        self.assertEqual(True, True)
        service = PredatorMovement(self.predator.code, self.predator.latitude, self.predator.longitude)
        rabbits = service.get_rabbits()
        self.assertEqual(rabbits.count(), 5)
