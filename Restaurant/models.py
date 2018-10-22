#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.contrib.gis.db import models
from django.core.exceptions import ValidationError
from django.core.validators import *

# Restaurant model 
class Restaurants(models.Model):
	class Meta:
		db_table = "Restaurants"
	id = models.TextField(primary_key=True)
	rating = models.IntegerField(validators=[MinValueValidator(0),MaxValueValidator(4)],blank=False)
	name = models.TextField(blank=False)
	site = models.TextField(blank=False)
	email = models.TextField(blank=False)
	phone = models.TextField(blank=False)
	street = models.TextField(blank=False)
	city = models.TextField(blank=False)
	state = models.TextField(blank=False)
	lat = models.FloatField(blank=False)
	lng = models.FloatField(blank=False)
	#Django specific
	mpoly = models.PointField(null=True);
