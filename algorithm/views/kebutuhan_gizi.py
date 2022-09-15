from base.models import Gender


class KebutuhanGizi():

    def kebutuhanGiziValidate(self, berat_badan: float, tinggi_badan: float, usia: int, gender: str, nilai_tingkat_aktivitas: float = None) -> None:
        # Data type validation
        if type(berat_badan) != int and type(berat_badan) != float:
            raise Exception('Tipe data berat_badan harus int atau float')

        if type(tinggi_badan) != int and type(tinggi_badan) != float:
            raise Exception('Tipe data tinggi_badan harus int atau float')

        if type(usia) != int:
            raise Exception('Tipe data usia harus int')

        if type(gender) != str:
            raise Exception('Tipe data gender harus str')

        if type(nilai_tingkat_aktivitas) != float:
            raise Exception('Tipe data nilai_tingkat_aktivitas harus float')

        # Data value validation
        if berat_badan <= 0:
            raise Exception('berat_badan harus lebih dari 0')

        if tinggi_badan <= 0:
            raise Exception('tinggi_badan harus lebih dari 0')

        if usia <= 0:
            raise Exception('usia harus lebih dari 0')

        if gender != Gender.LAKI and gender != Gender.PEREMPUAN:
            raise Exception(
                'Gender pilih LA untuk laki-laki atau PE untuk perempuan')

        if nilai_tingkat_aktivitas <= 0:
            raise Exception('nilai_tingkat_aktivitas harus lebih dari 0')

    def __init__(self, berat_badan: float, tinggi_badan: float, usia: int, gender: str, nilai_tingkat_aktivitas: float) -> None:
        try:
            self.kebutuhanGiziValidate(berat_badan=berat_badan, tinggi_badan=tinggi_badan,
                                       usia=usia, gender=gender, nilai_tingkat_aktivitas=nilai_tingkat_aktivitas)
        except:
            raise

    def hitungAMB(self, berat_badan: int, tinggi_badan: int, usia: int, gender: str) -> float:
        try:

            # Process
            hasil = 66 + (13.7 * berat_badan) + \
                (5 * tinggi_badan) - (6.8 * usia)

            if gender == 'PE':
                hasil = 665 + (9.6 * berat_badan) + \
                    (1.8 * tinggi_badan) - (4.7 * usia)

            return hasil

        except BaseException as e:
            # Raise execption apapun
            raise

    def hitungTotalEnergi(self, amb: float, nilai_tingkat_aktivitas: float) -> float:
        try:
            hasil = nilai_tingkat_aktivitas * amb

            return hasil

        except BaseException as e:
            raise

    def hitungIMT(self, berat_badan: float, tinggi_badan: float) -> float:
        try:
            hasil = berat_badan / pow((tinggi_badan / 100), 2)

            return hasil
        except BaseException as e:
            raise

    def sesuaikanEnergi(self, total_energi: float, imt: float) -> float:
        try:
            hasil = 0

            if imt > 25:
                hasil = total_energi - 500
            elif imt >= 18.5 and imt <= 25:
                hasil = total_energi
            elif imt < 18.5:
                hasil = total_energi + 500
            else:
                raise Exception(
                    'Error IMT range')

            return hasil

        except BaseException as e:
            raise

    def hitungGizi(self, energi_sesuai: float, gizi: str) -> float:
        try:
            hasil = 0
            gizi = gizi.lower()

            if gizi == 'protein':
                kebutuhan_protein_10 = (0.1 * energi_sesuai) / 4
                kebutuhan_protein_15 = (0.15 * energi_sesuai) / 4
                hasil = {
                    'protein_10': kebutuhan_protein_10,
                    'protein_15': kebutuhan_protein_15,
                }
            elif gizi == 'lemak':
                kebutuhan_lemak_10 = (0.1 * energi_sesuai) / 9
                kebutuhan_lemak_25 = (0.25 * energi_sesuai) / 9
                hasil = {
                    'lemak_10': kebutuhan_lemak_10,
                    'lemak_25': kebutuhan_lemak_25,
                }
            elif gizi == 'karbo':
                kebutuhan_karbo_60 = (0.6 * energi_sesuai) / 4
                kebutuhan_karbo_75 = (0.75 * energi_sesuai) / 4
                hasil = {
                    'karbo_60': kebutuhan_karbo_60,
                    'karbo_75': kebutuhan_karbo_75,
                }
            else:
                raise Exception(
                    'Pilihan gizi antara protein, lemak, atau karbo')

            return hasil
        except BaseException as e:
            raise

    def hitung(self, berat_badan: float, tinggi_badan: float, usia: int, gender: str, nilai_tingkat_aktivitas: float) -> dict:
        try:
            amb = self.hitungAMB(
                berat_badan=berat_badan,
                tinggi_badan=tinggi_badan,
                usia=usia,
                gender=gender
            )
            
            total_energi = self.hitungTotalEnergi(amb, nilai_tingkat_aktivitas)
            
            imt = self.hitungIMT(berat_badan, tinggi_badan)
            
            energi_sesuai = self.sesuaikanEnergi(total_energi, imt)
            
            kebutuhan_protein = self.hitungGizi(energi_sesuai, 'protein')
            kebutuhan_lemak = self.hitungGizi(energi_sesuai, 'lemak')
            kebutuhan_karbo = self.hitungGizi(energi_sesuai, 'karbo')
            
            result =  {
                'amb': amb,
                'total_energi': total_energi,
                'imt': imt,
                'kebutuhan_protein': kebutuhan_protein,
                'kebutuhan_lemak': kebutuhan_lemak,
                'kebutuhan_karbo': kebutuhan_karbo,
            }
            
            return result
        
        except BaseException as e:
            raise