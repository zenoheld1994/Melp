#!/usr/bin/env python
# -*- coding: utf-8 -*-
from rest_framework import serializers
import re
from uuid import uuid4
from .models import Restaurants
from django.contrib.gis.geos import Point
from django.contrib.gis.measure import Distance  
from operator import attrgetter
import statistics 

#Serializer to serialize  most of Crud operations
class RestaurantsSerializer(serializers.ModelSerializer):
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
		fields = ('id','rating','name','site','email','phone','street','city','state','lat','lng')

#Serializer for getStatistic Service
class RestaurantSerializer(serializers.Serializer):
	latitude = serializers.FloatField(required=True)
	longitude = serializers.FloatField(required=True)
	radius = serializers.SerializerMethodField()
	#validate that radius is a number with few validations
	def validate_radius(self,radius):
		if(radius.isdigit() and (not radius)):
			return radius
		else:
			raise serializers.ValidationError("Please provide a numeric value or/and a value")

	class Meta:
		model = Restaurants
		fields = ('latitude','longitude','radius')
	def get_statistics(self,validated_data):
		longt = validated_data['longitude']
		lati = validated_data['latitude']
		radius = validated_data['radius']
		point = Point(float(longt),float(lati)) 
		#Using raw query instead of  DLimit (Windows distribution Issue)
		restaurants=Restaurants.objects.raw("SELECT * FROM  \"Restaurants\" WHERE ST_DWithin(Geography(mpoly),Geography(ST_MakePoint("+longt+"," +lati+")),"+radius+");")
		#Cast from raw query to List
		listWithObj = list(restaurants)
		#Obtaining only the column with the info we need
		listWithRating = list(map(attrgetter('rating'), listWithObj))
		info = {}
		info["count"]=len(list(restaurants))
		info["avg"]= float(sum(listWithRating))/len(listWithRating)
		info["std"]= statistics.stdev(listWithRating)

		return info


