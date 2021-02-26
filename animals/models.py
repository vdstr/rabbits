from django.db import models
from django.db.models import CASCADE


class AnimalType(models.Model):
    name = models.CharField(max_length=255, verbose_name='Type of animal', unique=True)
    is_predator = models.BooleanField(verbose_name='Is it a predator?', default=False)

    def __str__(self):
        return self.name


class Animal(models.Model):
    name = models.CharField(max_length=255, verbose_name='Name of animal')
    animal_type = models.ForeignKey(AnimalType, verbose_name='Type of animal', on_delete=CASCADE)
    code = models.PositiveIntegerField(verbose_name='Code of animal', unique=True)
    latitude = models.FloatField(verbose_name='Latitude of animal')
    longitude = models.FloatField(verbose_name='Longitude of animal')
    is_caught = models.BooleanField(verbose_name='Is caught?', default=False)

    def __str__(self):
        return f'#{self.code} {self.name} ({self.animal_type})'
