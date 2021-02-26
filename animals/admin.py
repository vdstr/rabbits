from django.contrib import admin

from animals.models import AnimalType, Animal


@admin.register(AnimalType)
class AnimalTypesAdmin(admin.ModelAdmin):
    pass


@admin.register(Animal)
class AnimalsAdmin(admin.ModelAdmin):
    pass
