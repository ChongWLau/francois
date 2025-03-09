from django.db import models

from django.db.models import (
    CharField,
    TextField,
)


class Recipe(models.Model):
    ingredients = CharField(max_length=2048)
    instructions = TextField()
