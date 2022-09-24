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
            
            generasi = ag.generateGenerasi()
            
            rekomendasi = generasi
            
            # TODO: For loop proses algoritma genetika
            # for generasi in range(0,20):
            #     crossover = ag.selectCross
            #     mutasi
            #     elitism
            #     break
            
            nilai_fitness = ag.hitungNilaiFitness(generasi, kebutuhan_gizi)
            crossover = ag.selectCross(nilai_fitness['set_nilai_fitness'], copy.deepcopy(generasi))
            generasi_mutasi = ag.mutasi(copy.deepcopy(crossover['childs']))
            generasi_elit = ag.elitism(copy.deepcopy(generasi), nilai_fitness['set_nilai_fitness'])
            populasi_baru = ag.bentukPopulasiBaru(generasi_mutasi, generasi_elit)
            
            # Populasi baru

            return Response(
                {
                    "message": "Berhasil membuat rekomendasi",
                    "data": {
                        'kebutuhan_gizi': kebutuhan_gizi,
                        'populasi_baru': populasi_baru,
                        # 'mutasi': generasi_mutasi,
                        # 'nilai_fitness': nilai_fitness,
                    },
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
