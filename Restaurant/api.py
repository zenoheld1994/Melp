#!/usr/bin/env python
# -*- coding: utf-8 -*-
from rest_framework import viewsets, status, mixins
from rest_framework import *
from rest_framework.permissions import *
from rest_framework import serializers
from django.shortcuts import get_object_or_404
from rest_framework import permissions
from rest_framework.decorators import detail_route, list_route
from rest_framework.response import Response
from rest_framework.views import APIView
from .models import *
from .serializers import *
from django.http import HttpResponse
import json 
import requests

class RestaurantsViewSet(mixins.ListModelMixin,
	mixins.CreateModelMixin, 
	mixins.RetrieveModelMixin,
	mixins.UpdateModelMixin,
	mixins.DestroyModelMixin,
	viewsets.GenericViewSet):
	serializer_class = RestaurantsSerializer
	queryset = Restaurants.objects.all()
	@list_route(methods=['GET'], permission_classes=[permissions.AllowAny])
	def statistics(self, request):
		latitude=request.GET['latitude']
		ser = RestaurantSerializer(data=request.GET)
		if ser.is_valid():
			try:
				return Response(ser.get_statistics(validated_data=request.GET))
			except:
				return Response(ser.errors, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
		return Response(ser.errors, status=status.HTTP_400_BAD_REQUEST)
