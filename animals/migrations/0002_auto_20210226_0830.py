# Generated by Django 3.1.7 on 2021-02-26 08:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('animals', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='animal',
            name='code',
            field=models.PositiveIntegerField(unique=True, verbose_name='Code of animal'),
        ),
        migrations.AlterField(
            model_name='animaltype',
            name='name',
            field=models.CharField(max_length=255, unique=True, verbose_name='Type of animal'),
        ),
    ]