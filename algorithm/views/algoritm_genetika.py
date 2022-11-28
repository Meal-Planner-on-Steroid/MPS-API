import logging
from base.models import Makanan
from api.serializers.MakananSerializer import MakananSerializer
from django.db.models.aggregates import Count
from random import randint
from .seleksi import Seleksi
import random
import copy


class AlgoritmaGenetika(Seleksi):

    def __init__(self, kebutuhan_gizi: dict) -> None:
        pass

    def generateGenerasi(self, blok_makanan: list = []) -> list:
        """Membuat 10 set rekomendasi menu yang terdiri dari 3 makanan dan 2 camilan

        Returns:
            list: 10 set rekomendasi menu yang terdiri dari 3 makanan dan 2 camilan
        """
        try:
            hasil = []

            for row in range(0, 10):
                set_makanan = self.ambilRandomMakanan('ME', 3, blok_makanan)
                set_camilan = self.ambilRandomMakanan('CA', 2, blok_makanan)

                hasil.append(set_makanan + set_camilan)

            return hasil

        except BaseException as e:
            raise

    def hitungNilaiFitness(self, generasi, kebutuhan_gizi: dict) -> dict:
        """Hitung nilai fitness dari generasi

        Args:
            generasi (_type_): 10 st rekomendasi menu makanan
            kebutuhan_gizi (dict): Kebutuhan gizi pengguna

        Returns:
            dict: Nilai gizi setiap kromsom dan nilai fitness setiap kromosom
        """
        try:
            hasil = {
                'set_nilai_gizi': [],
                'set_nilai_fitness': [],
            }

            # Hitung nilai gizi
            for index, kromosom in enumerate(generasi):
                # Hitung nilai gizi
                nilai_gizi = self.sumNilaiGiziKromosom(kromosom)
                nilai_gizi['index'] = index

                # Simpan nilai gizi
                hasil['set_nilai_gizi'].append(nilai_gizi)

                # Hitung nilai fitness
                nilai_fitness_protein = self.hitungNilaiAnggota(
                    kebutuhan_gizi['kebutuhan_protein']['protein_10'],
                    kebutuhan_gizi['kebutuhan_protein']['protein_15'],
                    nilai_gizi['protein']
                )
                nilai_fitness_lemak = self.hitungNilaiAnggota(
                    kebutuhan_gizi['kebutuhan_lemak']['lemak_10'],
                    kebutuhan_gizi['kebutuhan_lemak']['lemak_25'],
                    nilai_gizi['lemak']
                )
                nilai_fitness_karbo = self.hitungNilaiAnggota(
                    kebutuhan_gizi['kebutuhan_karbo']['karbo_60'],
                    kebutuhan_gizi['kebutuhan_karbo']['karbo_75'],
                    nilai_gizi['karbo']
                )

                nilai_fitness = {
                    'nilai_fitness_protein': nilai_fitness_protein,
                    'nilai_fitness_lemak': nilai_fitness_lemak,
                    'nilai_fitness_karbo': nilai_fitness_karbo,
                }

                # Simpan nilai fitness
                hasil['set_nilai_fitness'].append(nilai_fitness)

            return hasil

        except BaseException as e:
            raise

    def selectCross(self, set_nilai_fitness: list, generasi: list) -> list:
        """Container untuk melakukan proses selection dan crossover secara bersamaan

        Args:
            set_nilai_fitness (list): Nilai fitness dari generasi
            generasi (list): Generasi yang akan mengalami crossover

        Returns:
            hasil['parents']: Set kromosom yang terpilih sebagai orang tua
            hasil['childs']: Set kromosom yang dihasilkan oleh parents (pada proses crossover)
        """
        try:
            
            hasil = {
                "parents": [],
                "childs": [],
            }

            probailitas = Seleksi().generateProbabilitas(set_nilai_fitness)

            # Forloop crossover
            for row in range(0, int(len(generasi)/2)):
                parents = Seleksi().selectParent(probailitas['probabilitas_kumulatif'], copy.deepcopy(generasi))                    
                hasil['parents'].extend(parents)
                    
                childs = self.crossover(copy.deepcopy(parents))
                hasil['childs'].extend(childs)

            return hasil

        except BaseException as e:
            raise
    
    def mutasi(self, generasi: list, blok_makanan: list = []) -> list:
        """Mengubah gen pada kromosom pada tempat yang acak

        Args:
            generasi (list): Generasi yang akan mengalami mutasi

        Returns:
            list: Generasi yang telah mengalami mutasi
        """
        try:
            random_number = random.randrange(0, 2)
            
            for row in generasi:
                random_makanan = self.ambilRandomMakanan('ME', 1, blok_makanan)[0]
                row[random_number] = random_makanan
            
            return generasi
        except BaseException as e:
            raise
    
    def elitism(self, generasi: list, set_nilai_fitness: list) -> list:
        """Mengambil kromosom terbaik dari generasi

        Args:
            generasi (list): Generasi yang akan diambil nilai terbaiknya
            set_nilai_fitness (list): Nilai fitness dari generasi

        Returns:
            list: Dua generasi terbaik
        """
        try:
            hasil = []
            
            # Hitung probabilitas (lagi) untuk mengurutkan kromosom terjelek ke terbaik
            probabilitas = Seleksi().generateProbabilitas(set_nilai_fitness)
            
            # Simpan index, agar tidak terlalu panjang codingannya
            kromosom1_index = probabilitas['final_probabilitas'][-1]['index']
            kromosom2_index = probabilitas['final_probabilitas'][-2]['index']
            
            # Simpan generasi dengan hasil terbaik
            hasil.append(generasi[kromosom1_index])
            hasil.append(generasi[kromosom2_index])
            
            return hasil
        
        except BaseException as e:
            raise
    
    def bentukPopulasiBaru(self, generasi_mutasi: list, generasi_elit: list) -> list:
        """Menggabungkan generasi mutasi dan generasi elit

        Args:
            generasi_mutasi (list): Generasi yang telah mengalami mutasi
            generasi_elit (list): Generasi dengan nilai fitness atau probabilitas terpilih yang terbaik

        Returns:
            list: Gabungan antara generasi mutasi dan generasi elit (jumlahnya 10)
        """
        try:
            hasil = generasi_elit
            
            generasi_mutasi.pop(-1)
            generasi_mutasi.pop(-2)
            
            hasil.extend(generasi_mutasi)
            
            return hasil
        
        except BaseException as e:
            raise
        
    def crossover(self, parents:list) -> list:
        """Melakukan persilangan kromosom antar parent

        Args:
            parents (list): Kromosom yang telah dipilih sebagai parent

        Returns:
            list: Childs dari parent
        """
        try:
            childs = copy.deepcopy(parents)
            
            random_nomor_1 = random.randrange(0,2)
            random_nomor_2 = random.randrange(3,4)
            
            childs[0][random_nomor_1] = parents[1][random_nomor_1]
            childs[0][random_nomor_2] = parents[1][random_nomor_2]
            
            childs[1][random_nomor_1] = parents[0][random_nomor_1]
            childs[1][random_nomor_2] = parents[0][random_nomor_2]
            
            return childs
            
        except BaseException as e:
            raise

    # Util
    def hitungNilaiAnggota(self, a: float, c: float, x: float) -> float:
        """Hitung nilai anggota kurva segitiga
        * Utility hitungNilaiFitness

        Args:
            a (float): Nilai bawah
            c (float): Nilai atas
            x (float): Nilai yang akan diukur nilai anggotanya

        Raises:
            Exception: Value out of bound

        Returns:
            float: Nilai anggota antara -1 sampai 1
        """
        try:
            hasil = 0
            b = (a+c) / 2

            if x < a or x > c:
                return hasil
            elif x >= a and x <= b:
                hasil = (b-x)/(b-a)
            elif x >= b and x <= c:
                hasil = (c-x)/(c-b)
            else:
                raise Exception("Value out of bound")

            return hasil

        except BaseException as e:
            raise

    def sumNilaiGiziKromosom(self, kromosom: dict) -> dict:
        """Hitung sum nilai dari kromosom
        * Utility hitungNilaiFitness

        Args:
            kromosom (dict): Row dari generasi

        Returns:
            dict: Sum nilai gizi protein, lemak, karbo
        """
        try:

            hasil = {
                'protein': 0,
                'lemak': 0,
                'karbo': 0,
            }

            for row in kromosom:
                hasil['protein'] += row['protein']
                hasil['lemak'] += row['lemak']
                hasil['karbo'] += row['karbo']

            return hasil

        except BaseException as e:
            raise

    def ambilRandomMakanan(self, jenis: str, jumlah: int, blok_makanan: list = []) -> list:
        """Mengambil makanan random dari dataset makanan

        ! Ubah fungsi ini sesuah dengan jenis dataset
        * Saat ini fungsi dibuat untuk mengambil data dari database menggunakan model Makanan

        Args:
            jenis (str): Jenis makanan ('CA', 'BA', 'ME')
            jumlah (int): Jumlah data yang didapatkan

        Raises:
            Exception: Tipe data jenis str
            Exception: Tipe data jumlah int
            Exception: Pemilihan jenis
            Exception: Jumlah harus lebih dari 0

        Returns:
            list: [
                {
                    "id": 793,
                    "nama": "Manan samin",
                    "lemak": 50.6,
                    "protein": 3.4,
                    "karbo": 18.1,
                    "energi": 379.0, ..
                },
                ...
            ]
        """
        try:

            # Data type validation
            if type(jenis) != str:
                raise Exception('Tipe data jenis harus str')
            if type(jumlah) != int:
                raise Exception('Tipe data jumlah harus int')

            # Value validation
            if jenis != 'ME' and jenis != 'CA' and jenis != 'BA':
                raise Exception(
                    'Silahkan pilih salah satu jenis makanan CA, ME, atau BA')
            if jumlah <= 0:
                raise Exception('Jumlah tidak boleh kurang atau sama dengan 0')

            hasil = []

            makanan = Makanan.objects.filter(jenis=jenis).exclude(id__in=blok_makanan)
            count = makanan.aggregate(count=Count('id'))['count']

            for x in range(0, jumlah):

                random_index = randint(0, count - 1)
                random_makanan = makanan.all()[random_index]
                random_makanan = MakananSerializer(random_makanan, many=False)

                hasil.append(random_makanan.data)

            return hasil

        except BaseException as e:
            raise
