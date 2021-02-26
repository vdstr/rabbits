from random import randint

from animals.models import Animal


def update_rabbits_coordinates():
    for rabbit in Animal.objects.filter(animal_type__name='Rabbit', is_caught=False):
        rabbit.latitude += randint(-2, 2)
        rabbit.longitude += randint(-2, 2)
        rabbit.save()
