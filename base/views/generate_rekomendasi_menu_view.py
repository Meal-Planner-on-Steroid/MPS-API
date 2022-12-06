import copy
from django.shortcuts import render
from django.http import HttpResponse
from algorithm.views.algoritm_genetika import AlgoritmaGenetika
from algorithm.views.kebutuhan_gizi import KebutuhanGizi
from base.models import User

# Create your views here.
def index(response):
    
    return render(response, "base/generate_rekomendasi_menu.html")

def hasil(response):
    if response.method == 'POST':
        body = response.POST
        # with_detail = body['with_detail'] if "with_detail" in body else 0
        with_detail = 1
        list_blok_makanan = body['blok_makanan'] if "blok_makanan" in body else []
        
        print('with_detail' in body) 

        # Kebutuhan gizi
        kg = KebutuhanGizi(
            berat_badan=float(body['berat_badan']),
            tinggi_badan=float(body['tinggi_badan']),
            usia=int(body['usia']),
            gender=body['gender'],
            nilai_tingkat_aktivitas=float(body['nilai_tingkat_aktivitas'])
        )

        kebutuhan_gizi = kg.hitung(
            float(body['berat_badan']),
            float(body['tinggi_badan']),
            int(body['usia']),
            body['gender'],
            float(body['nilai_tingkat_aktivitas']),
        )

        # Algoritma Genetika

        ag = AlgoritmaGenetika(kebutuhan_gizi)
        
        detail_gen = []
        generasi = ag.generateGenerasi(blok_makanan=list_blok_makanan)
        rekomendasi = generasi
        
        for row in range(0,20):
            nilai_fitness = ag.hitungNilaiFitness(generasi, kebutuhan_gizi)
            crossover = ag.selectCross(nilai_fitness['set_nilai_fitness'], copy.deepcopy(generasi))
            generasi_mutasi = ag.mutasi(copy.deepcopy(crossover['childs']), list_blok_makanan)
            generasi_elit = ag.elitism(copy.deepcopy(generasi), nilai_fitness['set_nilai_fitness'])
            populasi_baru = ag.bentukPopulasiBaru(generasi_mutasi, generasi_elit)
            
            if with_detail:
                detail_gen.append({
                    'generasi': rekomendasi,
                    'nilai_fitness': nilai_fitness,
                    'crossover': crossover,
                    'generasi_mutasi': generasi_mutasi,
                    'generasi_elit': generasi_elit,
                })
            
            rekomendasi = populasi_baru
        
        result = {
            'kebutuhan_gizi': kebutuhan_gizi,
            'rekomendasi': rekomendasi[:7],
        }
        
        if with_detail:
            result['detail_proses'] = detail_gen
        
        # return HttpResponse(result['kebutuhan_gizi']['amb']);
        return render(response, "base/generate_rekomendasi_menu_hasil.html", result) 
