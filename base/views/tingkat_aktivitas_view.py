from django.shortcuts import render, redirect
from django.http import HttpResponse
from base.models import TingkatAktivitas
from django.contrib import messages
import logging

# Create your views here.
def index(response):
    
    if response.method == 'GET':
    
        tingkat_aktivitas_la = TingkatAktivitas.objects.all().order_by('nama').filter(gender='LA')
        tingkat_aktivitas_pe = TingkatAktivitas.objects.all().order_by('nama').filter(gender='PE')
        
        return render(response, "base/tingkat_aktivitas.html", {
            'tingkat_aktivitas_la': tingkat_aktivitas_la,
            'tingkat_aktivitas_pe': tingkat_aktivitas_pe,
        })
        
    if response.method == 'POST':
        body = response.POST

        try:
            tingkat_aktivitas = TingkatAktivitas.objects.get(id=body['id'])

            tingkat_aktivitas.nilai=body['nilai']

            tingkat_aktivitas.save()

            messages.add_message(response, messages.SUCCESS, 'Berhasil update nilai')
            return redirect('tingkat-aktivitas-index')

        except BaseException as e:
            messages.add_message(response, messages.ERROR, e)
            logging.exception("Terjadi masalah")
            return redirect('tingkat-aktivitas-index')