from django.db import models

# Create your models here.
class index(models.Model):
    judul = models.CharField(max_length=50)
    
    def __str__(self) :
        return self.judul