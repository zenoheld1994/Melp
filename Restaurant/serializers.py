#!/usr/bin/env python
# -*- coding: utf-8 -*-
from rest_framework import serializers
import re
from uuid import uuid4
from .models import Restaurants

class RestaurantsSerializer(serializers.Serializer):
	id = serializers.CharField(required=True)
	rating = serializers.IntegerField(required=True)
	name = serializers.CharField(required=True)
	site = serializers.CharField(required=True)
	email = serializers.CharField(required=True)
	phone = serializers.CharField(required=True)
	street = serializers.CharField(required=True)
	city = serializers.CharField(required=True)
	state = serializers.CharField(required=True)
	lat = serializers.FloatField(required=True)
	lng = serializers.FloatField(required=True)
	class Meta:
		model = Restaurants
		fields = ('id')
	def get_id(self,obj):
		return obj.id.pk
	def get_closer(self,obj):
		
	'''def get_idEscuela(self,obj):
		return obj.idEscuela.pk
	def get_usuario(self,obj):
		userauth = UserAuth.objects.get(pk=obj.idUser)
		return userauth.username
	def get_idGrupo(self,obj):
		try:
			return obj.idGrupo.pk
		except:
			try:
				return obj.idGrupo
			except:
				return None
	def get_nombreGrupo(self,obj):
		try:
			grupo = Grupos.objects.get(pk=obj.idGrupo.pk)
			return grupo.nombre
		except:
			try:
				grupo = Grupos.objects.get(pk=obj.idGrupo)
				return grupo.nombre
			except:
				return None
	def get_nombreEscuela(self,obj):
		try:
			escuela = Escuelas.objects.get(pk=obj.idEscuela.pk)
			return escuela.nombre
		except:
			try:
				escuela = Escuelas.objects.get(pk=obj.idEscuela)
				return escuela.nombre
			except:
				return None'''
