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
        
        i = 0
            
        # for row in range(0,100):
        while True:
            nilai_fitness = ag.hitungNilaiFitness(rekomendasi, kebutuhan_gizi)
            avg_fitness = ag.avgNilaiFitnessGizi(copy.deepcopy(nilai_fitness['set_nilai_fitness']))
            
            crossover = ag.selectCross(copy.deepcopy(nilai_fitness['set_nilai_fitness']), copy.deepcopy(rekomendasi))
            generasi_mutasi = ag.mutasi(copy.deepcopy(crossover['childs']), list_blok_makanan)
            generasi_elit = ag.elitism(copy.deepcopy(rekomendasi), nilai_fitness['set_nilai_fitness'])
            populasi_baru = ag.bentukPopulasiBaru(generasi_mutasi, generasi_elit)
            
            if with_detail:
                detail_gen.append({
                    'generasi': rekomendasi,
                    'nilai_fitness': nilai_fitness,
                    'avg_fitness': avg_fitness,
                    'crossover': crossover,
                    'generasi_mutasi': generasi_mutasi,
                    'generasi_elit': generasi_elit,
                })
                
            rekomendasi = copy.deepcopy(populasi_baru)
            
            if i % 10 == 0:
                print('================')
                print(avg_fitness)
                print('Ada di: ',i)         
            
            if i >= 50:
                print('================ ', i)
                print(avg_fitness)
                print('break di i')
                break
            
            if avg_fitness['protein'] > 0.5 and avg_fitness['lemak'] > 0.5 and avg_fitness['karbo'] > 0.5:
                print('================', i)
                print(avg_fitness)
                print('break di avg')
                break
            
            i += 1
        
        result = {
            'kebutuhan_gizi': kebutuhan_gizi,
            'rekomendasi': rekomendasi[:7],
            'haris': [
                {
                    "id": 0,
                    "name": 'Senin',
                },
                {
                    "id": 1,
                    "name": 'Selasa',
                },
                {
                    "id": 2,
                    "name": 'Rabu',
                },
                {
                    "id": 3,
                    "name": 'Kamis',
                },
                {
                    "id": 4,
                    "name": 'Jumat',
                },
                {
                    "id": 5,
                    "name": 'Sabtu',
                },
                {
                    "id": 6,
                    "name": 'Minggu',
                },
            ],
        }
        
        if with_detail:
            result['detail_proses_start'] = detail_gen[0]
            result['detail_proses_mid'] = detail_gen[round(i/2)]
            result['detail_proses_end'] = detail_gen[i-1]
        
        # return HttpResponse(result['kebutuhan_gizi']['amb']);
        return render(response, "base/generate_rekomendasi_menu_hasil.html", result) 
