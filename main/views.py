from django.shortcuts import render, get_object_or_404
from .models import CLUB, NEWS, DIVISION, PLACE

# Create your views here.
def home(request):
    news = NEWS.objects.all()
    divisions = DIVISION.objects.all()
    club = CLUB.objects.all()

    return render(request, 'home.html', {
        'news': news,
        'divisions': divisions,
        'club': club,
    })

def detailNew(request, id):
    news = get_object_or_404(NEWS,id=id)
    return render(request, 'detailNew.html', {
        'news': news,
    })
