from rest_framework import routers

from django.urls import include, path

from .views import RecipeViewSet

router = routers.DefaultRouter()
router.register("checkers", RecipeViewSet, basename="recipes")


urlpatterns = [
    path("", include(router.urls)),
]
