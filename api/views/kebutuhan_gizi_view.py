from urllib import response
from rest_framework.response import Response
from rest_framework.decorators import api_view
from algorithm.views.kebutuhan_gizi import KebutuhanGizi

@api_view(["POST"])
def kebutuhanGiziController(request):
    if request.method == "POST":
        try:
            body = request.data

            kg = KebutuhanGizi(
                berat_badan=body['berat_badan'],
                tinggi_badan=body['tinggi_badan'],
                usia=body['usia'],
                gender=body['gender'],
                nilai_tingkat_aktivitas= body['nilai_tingkat_aktivitas']
            )

            amb = kg.hitungAMB(
                berat_badan=body['berat_badan'],
                tinggi_badan=body['tinggi_badan'],
                usia=body['usia'],
                gender=body['gender']
            )
            
            total_energi = kg.hitungTotalEnergi(amb, body['nilai_tingkat_aktivitas'])
            
            imt = kg.hitungIMT(body['berat_badan'], body['tinggi_badan'])
            
            energi_sesuai = kg.sesuaikanEnergi(total_energi, imt)
            
            kebutuhan_protein = kg.hitungGizi(energi_sesuai, 'protein')
            kebutuhan_lemak = kg.hitungGizi(energi_sesuai, 'lemak')
            kebutuhan_karbo = kg.hitungGizi(energi_sesuai, 'karbo')
            
            result =  {
                'amb': amb,
                'total_energi': total_energi,
                'energi_sesuai': energi_sesuai,
                'imt': imt,
                'kebutuhan_protein': kebutuhan_protein,
                'kebutuhan_lemak': kebutuhan_lemak,
                'kebutuhan_karbo': kebutuhan_karbo,
            }
            
            return Response(
                {
                    "message": "Berhasil menentukan kebutuhan gizi",
                    "data": result,
                },
                status=200,
            )

        except Exception as e:
            return Response(
                {
                    "message": "Terjadi kesalahan",
                    "error": str(e)
                },
                status=400
            )
