from urllib import request
from django.shortcuts import render

# Create your views here.
def index(request):
    judul = "Fakultas Pertanian"

    konteks = {
        'judul': judul
    }
    return render(request, 'index.html', konteks)