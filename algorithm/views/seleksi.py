import logging
import random

class Seleksi():
    
    def __init__(self) -> None:
        pass
    
    def generateProbabilitas(self, set_nilai_fitness: list) -> dict:
        """Membuat probabilitas terpilihnya kromosom pada select parent

        Args:
            set_nilai_fitness (list): Nilai fitness setiap kromosom pada generasi

        Returns:
            hasil['kumpulan_probabilitas']: Probabilitas terpilihnya kromosom pada setiap nilai gizi
            hasil['final_probabilitas']: Probabilitas terpilihnya kromosom
            hasil['probabilitas_kumulatif']: Probabilitas kumulatif untuk proses select parent
        """
        try:
            hasil = {
                'kumpulan_probabilitas': [],
                'final_probabilitas': [],
                'probabilitas_kumulatif': [],
            }
            
            # Hitung nilai sum dari setiap gizi
            sum_gizi = self.sumPerNilaiGizi(set_nilai_fitness)
            
            # Hitung probabilitas setiap nilai gizi di kromosom
            for nilai_fitness in set_nilai_fitness:
                probabilitas = {
                    'probabilitas_protein': nilai_fitness['nilai_fitness_protein'] / sum_gizi['protein'] if sum_gizi['protein'] != 0 else 0,
                    'probabilitas_lemak': nilai_fitness['nilai_fitness_lemak'] / sum_gizi['lemak'] if sum_gizi['lemak'] != 0 else 0,
                    'probabilitas_karbo': nilai_fitness['nilai_fitness_karbo'] / sum_gizi['karbo'] if sum_gizi['karbo'] != 0 else 0,
                }
                
                # Simpan probabilitas
                hasil['kumpulan_probabilitas'].append(probabilitas)
            
            # Htiung probabilitas terpilihnya kromosom
            for index, row in enumerate(hasil['kumpulan_probabilitas']):
                probabilitas = {
                    'index': 0,
                    'probabilitas_total': 0
                }
                
                probabilitas['index'] = index
                probabilitas['probabilitas_total'] = (row['probabilitas_protein'] + row['probabilitas_lemak'] + row['probabilitas_karbo']) / 3
                
                # Simpan probabilitas
                hasil['final_probabilitas'].append(probabilitas)
                
            # Sorting probabilitas total
            hasil['final_probabilitas'] = self.sortingListDict(hasil['final_probabilitas'], 'probabilitas_total', 'asc')
            
            # Fitness scalling
            # Referensi -> https://github.com/Meal-Planner-on-Steroid/MPS-API/issues/1
            # # Persiapan
            final_probabilitas_len = len(hasil['final_probabilitas'])
            max = hasil['final_probabilitas'][final_probabilitas_len-1]['probabilitas_total']
            min = hasil['final_probabilitas'][0]['probabilitas_total']
            new_scale = [10, 1]
            
            [a, b] = self.linearEqua22([max, min], [1,1], new_scale)
            
            # # Proses fitness scalling
            for row in hasil['final_probabilitas']:
                row['scaled'] = a * row['probabilitas_total'] + b
                
            # Hitung probabilitas kumulatif
            kumulatif = 0
            for index, row in enumerate(hasil['final_probabilitas']):
                kumulatif += row['scaled']
                
                nilai_kumulatif = {
                    'index': row['index'],
                    'scaled_kumulatif': kumulatif,
                }
                
                hasil['probabilitas_kumulatif'].append(nilai_kumulatif)
            
            return hasil
        
        except BaseException as e:
            raise
    
    # Select parent
    def selectParent(self, probabilitas_kumulatif: list, generasi: list) -> list:
        """Mengambil parent secara random berdasarkan paramter tertentu
        # Parameter yang digunakan scaled_kumulatif

        Args:
            probabilitas_kumulatif (list): Probabilitas kumulatif terpilihnya kromosom
            generasi (list): Generasi yang akan dipilih sebagai parent

        Returns:
            parents: _description_
        """
        try:
            parents = []
            key_for_selection = 'scaled_kumulatif'
            min_number = probabilitas_kumulatif[0]['scaled_kumulatif']
            max_number = probabilitas_kumulatif[len(probabilitas_kumulatif)-1]['scaled_kumulatif']
            
            x = 0
            while x < 2:
                random_number = random.uniform(min_number, max_number)
                
                for probabilitas in probabilitas_kumulatif:
                    if random_number < probabilitas[key_for_selection]:
                        parents.append(generasi[probabilitas['index']])
                        x += 1
                        break
            
            return parents
                    
        except BaseException as e:
            raise
        
    # Util
    
    def sumPerNilaiGizi(self, set_nilai_fitness: list) -> dict:
        """Mendapatkan nilai sum per nilai gizi

        Args:
            set_nilai_fitness (list): Nilai sum per nilai gizi

        Returns:
            dict: _description_
        """
        try:
            hasil = {
                'protein': 0,
                'lemak': 0,
                'karbo': 0
            }
            
            for nilai_fitness in set_nilai_fitness:
                hasil['protein'] += nilai_fitness['nilai_fitness_protein']
                hasil['karbo'] += nilai_fitness['nilai_fitness_karbo']
                hasil['lemak'] += nilai_fitness['nilai_fitness_lemak']
            
            return hasil
            
        except BaseException as e:
            raise
    
    def sortingListDict(self, listofdict: list, index: str, order: str) -> list:
            """
                Sort the list of dictionary by using quicksort.

                Code by: funnydman & Brionius
                Modified by: Alif
            """
            array = listofdict
            less = []
            equal = []
            greater = []
            
                

            if len(array) > 1:
                pivot = array[0][index]
                if order == 'asc':                
                    for x in array:
                        if x[index] < pivot:
                            less.append(x)
                        elif x[index] == pivot:
                            equal.append(x)
                        elif x[index] > pivot:
                            greater.append(x)
                else:
                    for x in array:
                        if x[index] > pivot:
                            less.append(x)
                        elif x[index] == pivot:
                            equal.append(x)
                        elif x[index] < pivot:
                            greater.append(x)
                # Don't forget to return something!
                return self.sortingListDict(less, index, order)+equal+self.sortingListDict(greater, index, order)  # Just use the + operator to join lists
            # Note that you want equal ^^^^^ not pivot
            else:  # You need to handle the part at the end of the recursion - when you only have one element in your arrray, just return the arrray.
                return array

    def linearEqua22(self, a: list, b: list, c: list) -> list:
        """Memecahkan persamaan linear 2 variable
        # Pemecahan menggunakan Cramer's rule
        # Referensi -> https://github.com/Meal-Planner-on-Steroid/MPS-API/issues/1

        Args:
            a (list): Variable tidak diketahui pertama
            b (list): Variable tidak diketahui kedua
            c (list): Hasil persamaan

        Returns:
            list: Nilai a dan b
        """
        try:
            hasil = []
            
            a1 = a[0]
            a2 = a[1]
            b1 = b[0]
            b2 = b[1]
            c1 = c[0]
            c2 = c[1]
            
            d = (a1*b2) - (b1*a2)
            dx = (c1*b2) - (b1*c2)
            dy = (a1*c2) - (c1*a2)
            
            a = dx / d
            b = dy / d
            
            hasil = [a, b]
            
            return hasil
        
        except BaseException as e:
            raise