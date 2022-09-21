import random

class Seleksi():
    
    def __init__(self) -> None:
        pass
    
    def generateProbabilitas(self, set_nilai_fitness: list) -> dict:
        # ! Problem: Terjadi situasi dimana probabilitas terpilihnya kromosom adalah 0
        # * Pilihannya adalah mengubah metode pemilihan roulette wheel selection atau
        # * Mencari cara untuk tidak membiarkan kromosom memiliki probabilitas 0
        # Referensi: https://stackoverflow.com/questions/23010525/genetic-algorithms-roulette-wheel-selection
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
                
            # Hitung probabilitas kumulatif
            # kumulatif = 0
            # for index, row in enumerate(hasil['final_probabilitas']):
            #     kumulatif += row['probabilitas_total']
                
            #     nilai_kumulatif = {
            #         'index': row['index'],
            #         'probabilitas_total': kumulatif,
            #     }
                
            #     hasil['probabilitas_kumulatif'].append(nilai_kumulatif)
            
            # TODO: Flowchart Rank based selection
            # Ranking final probabilitas
            # for rank, row in enumerate(hasil['final_probabilitas']):
            #     row['rank'] = rank+1
            
            # TODO: Flowchart fitness scalling selection
            # Fitness scalling
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
    
    # TODO: Select parent
    def selectParent(self, probabilitas_kumulatif: list, generasi: list) -> list:
        try:
            parents = []
            key_for_selection = 'scaled_kumulatif'
            
            x = 0
            while x < 2:
                random_number = random.uniform(1,10)
                
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