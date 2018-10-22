# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-10-21 22:40
from __future__ import unicode_literals

import django.contrib.gis.db.models.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Restaurant', '0002_restaurants_mpoly'),
    ]

    operations = [
        migrations.AlterField(
            model_name='restaurants',
            name='mpoly',
            field=django.contrib.gis.db.models.fields.MultiPolygonField(srid=4326),
        ),
    ]