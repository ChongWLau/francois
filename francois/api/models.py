from django.db import models

from django.db.models import (
    CharField,
    TextField,
)


class Recipe(models.Model):
    name = CharField(max_length=255)
    ingredients = CharField(max_length=2048)
    instructions = TextField()
