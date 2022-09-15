from base.models import Makanan
from api.serializers.MakananSerializer import MakananSerializer
from django.db.models.aggregates import Count
from random import randint


class AlgoritmaGenetika():

    def __init__(self, kebutuhan_gizi: dict) -> None:
        pass

    def generateGenerasi(self, set_makanan) -> dict:
        try:

            return 0

        except BaseException as e:
            raise

    def ambilRandomMakanan(self, jenis: str, jumlah: int) -> list:
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
            
            makanan = Makanan.objects.filter(jenis=jenis)
            count = makanan.aggregate(count=Count('id'))['count']

            for x in range(0,jumlah):
                
                random_index = randint(0, count - 1)
                random_makanan = makanan.all()[random_index]
                random_makanan = MakananSerializer(random_makanan, many=False)
                
                hasil.append(random_makanan.data)

            return hasil

        except BaseException as e:
            raise
