from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from algorithm.views.algoritm_genetika import AlgoritmaGenetika
from algorithm.views.kebutuhan_gizi import KebutuhanGizi
import logging
import copy


@api_view(["POST"])
def generateRekomendasiController(request):
    if request.method == "POST":
        try:

            body = request.data
            with_detail = body['with_detail'] if "with_detail" in body else 0
            list_blok_makanan = body['blok_makanan'] if "blok_makanan" in body else []
            
            print('with_detail' in body) 

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
                'rekomendasi': rekomendasi,
            }
            
            if with_detail:
                result['detail_proses'] = detail_gen

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
