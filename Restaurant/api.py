#!/usr/bin/env python
# -*- coding: utf-8 -*-
from rest_framework import viewsets, status, mixins
from rest_framework import *
from rest_framework.permissions import *
from django.shortcuts import get_object_or_404
from rest_framework import permissions
from rest_framework.decorators import detail_route, list_route
from rest_framework.response import Response
from rest_framework.renderers import JSONRenderer, BrowsableAPIRenderer, TemplateHTMLRenderer
from rest_framework.views import APIView
from .models import *
from .serializers import *
from django.http import HttpResponse
import json 
from Melp.settings import SERVER_IP
import requests

class RestaurantsViewSet(mixins.ListModelMixin,
	mixins.CreateModelMixin, 
	mixins.RetrieveModelMixin,
	mixins.UpdateModelMixin,
	mixins.DestroyModelMixin,
	viewsets.GenericViewSet):
	serializer_class = RestaurantsSerializer
	#permission_classes = [SuperAdminPermission, TokenHasReadWriteScope]
	#authentication_classes = [OAuth2Authentication]
	queryset = Restaurants.objects.all()