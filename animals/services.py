import math

from animals.models import Animal
from animals.serializers import RabbitsSerializer
from animals.utils import update_rabbits_coordinates


class PredatorMovement:
    def __init__(self, code, latitude, longitude):
        self.predator = Animal.objects.filter(code=code).first()
        self.latitude = latitude
        self.longitude = longitude

    def get_response_data(self):
        jump = self.calc_jump()
        self.update_predator_coordinates()
        rabbits = self.get_rabbits()
        serialized_rabbits = RabbitsSerializer.serialize(rabbits)
        rabbits.update(is_caught=True)

        update_rabbits_coordinates()

        return {'name': self.predator.name, 'jump': jump, 'rabbits': serialized_rabbits}

    def calc_jump(self):
        return round(math.sqrt((self.latitude - self.predator.latitude) ** 2
                               + (self.longitude - self.predator.longitude) ** 2), 2)

    def update_predator_coordinates(self):
        self.predator.latitude = self.latitude
        self.predator.longitude = self.longitude
        self.predator.save()

    def get_rabbits(self):
        return Animal.objects.filter(latitude__range=[self.latitude - 2, self.latitude + 2],
                                     longitude__range=[self.longitude - 2, self.longitude + 2],
                                     animal_type__name='Rabbit', is_caught=False)


class FindRabbits:
    def get_response_data(self):
        serialized_rabbits = RabbitsSerializer.serialize(self.get_rabbits())
        return {'rabbits': serialized_rabbits}

    @staticmethod
    def get_rabbits():
        return Animal.objects.filter(animal_type__name='Rabbit', is_caught=False)
