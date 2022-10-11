from socket import NI_MAXHOST
from django.db import models

# Create your models here.
class Dosen(models.Model):
    NIP = models.CharField(max_length=9)
    Nama = models.TextField()
    Tanggallahir = models.TextField()
    Photo = models.TextField()
    Email = models.TextField()
    Fakultas = models.TextField()
    Prodi = models.TextField()
    Alamatrumah = models.TextField()

    def __str__(self):
        return self.NIP

class Tendik(models.Model):
    NIP = models.CharField(max_length=9)
    Nama = models.TextField()
    Tanggallahir = models.TextField()
    Photo = models.TextField()
    Email = models.TextField()
    Unit = models.TextField()
    Alamatrumah = models.TextField()

    def __str__(self):
        return self.NIP

class Mahasiswa(models.Model):
    NIM = models.CharField(max_length=9)
    Nama = models.TextField()
    Tanggallahir = models.TextField()
    Photo = models.TextField()
    Email = models.TextField()
    Fakultas = models.TextField()
    Prodi = models.TextField()
    
    def __str__(self):
        return self.NIM

class index(models.Model):
    judul = models.CharField(max_length=50)
    Dosen_id = models.ForeignKey(Dosen, on_delete=models.CASCADE, null=True)
    Tendik_id = models.ForeignKey(Tendik, on_delete=models.CASCADE, null=True)
    Mahasiswa_id = models.ForeignKey(Mahasiswa, on_delete=models.CASCADE, null=True)

    def __str__(self) :
        return self.judul