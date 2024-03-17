from django.db import models

class UserData(models.Model):
    name = models.CharField(max_length=255)
    mobile = models.CharField(max_length=20)  
    district = models.CharField(max_length=255)
