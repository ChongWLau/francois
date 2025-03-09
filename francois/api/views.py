from rest_framework import status
from rest_framework.viewsets import ViewsSet
from rest_framework.response import Response
from rest_framework.request import Request
from django.views.generic import TemplateView
from django.shortcuts import get_object_or_404

from models import Recipe
from serializers import RecipeSerializer


class RecipeViewSet(ViewsSet):
    def create(self, request: Request) -> Response:
        serializer = RecipeSerializer()
        recipe = serializer.create(request.data)
        return Response(status=status.HTTP_200_OK, data=recipe.id)

    def retrieve(self, request: Request, pk: int) -> Response:
        queryset = Recipe.objects.all()
        recipe = get_object_or_404(queryset, pk=pk)
        serializer = RecipeSerializer(recipe)
        return Response(serializer.data)

    def update(self, request: Request, pk: int) -> Response:
        queryset = Recipe.objects.all()
        recipe = get_object_or_404(queryset, pk=pk)
        serializer = RecipeSerializer(recipe, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    def list(self, request: Request) -> Response:
        queryset = Recipe.objects.all()
        serializer = RecipeSerializer(queryset, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)
