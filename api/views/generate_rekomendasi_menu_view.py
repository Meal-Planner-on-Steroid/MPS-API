from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from algorithm.views.algoritm_genetika import AlgoritmaGenetika
from algorithm.views.kebutuhan_gizi import KebutuhanGizi
import logging
import copy
# import os


@api_view(["POST"])
def generateRekomendasiController(request):
    if request.method == "POST":
        try:

            body = request.data
            with_detail = body['with_detail'] if "with_detail" in body else 0
            list_blok_makanan = body['blok_makanan'] if "blok_makanan" in body else []
            
            # os.system("clear")
            
            print('Mulai proses pembuatan rekomendasi makanan') 

            # Kebutuhan gizi
            kg = KebutuhanGizi(
                berat_badan=body['berat_badan'],
                tinggi_badan=body['tinggi_badan'],
                usia=body['usia'],
                gender=body['gender'],
                nilai_tingkat_aktivitas=body['nilai_tingkat_aktivitas']
            )

            kebutuhan_gizi = kg.hitung(
                body['berat_badan'],
                body['tinggi_badan'],
                body['usia'],
                body['gender'],
                body['nilai_tingkat_aktivitas'],
            )

            # Algoritma Genetika

            ag = AlgoritmaGenetika(kebutuhan_gizi)
            
            detail_gen = []
            populasi_awal = ag.generateGenerasi(blok_makanan=list_blok_makanan)
            rekomendasi = populasi_awal
            generasi = 0
            
            avg_tertinggi = {
                'protein': 0,
                'lemak': 0,
                'karbo': 0,
            }
            generasi_avg_tertinggi = 0
            
            gizi_avg_tertinggi = {
                'protein': {
                    'avg': 0,
                    'generasi': 0
                },
                'lemak': {
                    'avg': 0,
                    'generasi': 0
                },
                'karbo': {
                    'avg': 0,
                    'generasi': 0
                }
            }
            
            # for row in range(0,100):
            while generasi <= 200:
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
                
                if generasi % 10 == 0:
                    print('================')
                    print(avg_fitness)
                    print('Ada di: ',generasi)         
                
                if generasi >= 200:
                    print('================ ', generasi)
                    print(avg_fitness)
                    print('break di generasi')
                
                if avg_fitness['protein'] > 0.5 and avg_fitness['lemak'] > 0.5 and avg_fitness['karbo'] > 0.5:
                    print('================', generasi)
                    print(avg_fitness)
                    print('break di avg')
                    break
                
                # Debug Generasi dengan nilai avg fitness tertinggi
                is_avg_protein_grater = avg_tertinggi['protein'] < avg_fitness['protein']
                is_avg_lemak_grater = avg_tertinggi['lemak'] < avg_fitness['lemak']
                is_avg_karbo_grater = avg_tertinggi['karbo'] < avg_fitness['karbo']
                
                if  is_avg_protein_grater and is_avg_lemak_grater and is_avg_karbo_grater:
                    avg_tertinggi['protein'] = avg_fitness['protein']
                    avg_tertinggi['lemak'] = avg_fitness['lemak']
                    avg_tertinggi['karbo'] = avg_fitness['karbo']
                    generasi_avg_tertinggi = generasi;
                    
                # Debug gizi dengan nilai avg fitness tertinggi
                if gizi_avg_tertinggi['protein']['avg'] < avg_fitness['protein']:
                    gizi_avg_tertinggi['protein']['avg'] = avg_fitness['protein']
                    gizi_avg_tertinggi['protein']['generasi'] = generasi
                
                if gizi_avg_tertinggi['lemak']['avg'] < avg_fitness['lemak']:
                    gizi_avg_tertinggi['lemak']['avg'] = avg_fitness['lemak']
                    gizi_avg_tertinggi['lemak']['generasi'] = generasi
                    
                if gizi_avg_tertinggi['karbo']['avg'] < avg_fitness['karbo']:
                    gizi_avg_tertinggi['karbo']['avg'] = avg_fitness['karbo']
                    gizi_avg_tertinggi['karbo']['generasi'] = generasi
                
                generasi += 1
                
            print('avg tertinggi =================')
            print(f'AVG fitness tertinggi adalah: {avg_tertinggi}')
            print(f'Yang ada di generasi ke-{generasi_avg_tertinggi}')
            
            print('avg gizi tertinggi =================')
            print(f"AVG fitness protein tertinggi adalah: {gizi_avg_tertinggi['protein']['avg']}")
            print(f"Yang ada di generasi ke-{gizi_avg_tertinggi['protein']['generasi']}")
            print(f"AVG fitness lemak tertinggi adalah: {gizi_avg_tertinggi['lemak']['avg']}")
            print(f"Yang ada di generasi ke-{gizi_avg_tertinggi['lemak']['generasi']}")
            print(f"AVG fitness karbo tertinggi adalah: {gizi_avg_tertinggi['karbo']['avg']}")
            print(f"Yang ada di generasi ke-{gizi_avg_tertinggi['karbo']['generasi']}")
            
            result = {
                'kebutuhan_gizi': kebutuhan_gizi,
                'rekomendasi': rekomendasi[:7],
            }
            
            if with_detail:
                result['detail_proses_start'] = detail_gen[0]
                result['detail_proses_mid'] = detail_gen[round(generasi/2)]
                result['detail_proses_end'] = detail_gen[generasi-1]

            return Response(
                {
                    "message": "Berhasil membuat rekomendasi makanan",
                    "data": result,
                },
                status=200,
            )

        except Exception as e:
            logging(e)
            return Response(
                {
                    "message": "Terjadi kesalahan",
                    "error": str(e)
                },
                status=400
            )
