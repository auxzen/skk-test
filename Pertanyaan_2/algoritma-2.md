# Berikut ini adalah algoritma dari pertanyaan 2
| Jawaban Bagian a
1. Baca nilai n
2. Untuk setiap baris i dari 1 sampai n:
    1. Cetak nilai i, sebanyak i kali (berurutan, tanpa jeda newline di tengah)
    2. Setelah mencetak i kali, pindah ke baris baru.
3. selesai

| Jawaban Bagian b
1. Baca nilai n
2. Untuk setiap baris i dari 1 sampai n:
    1. Cetak urutan angka dari i menurun ke 1, tanpa spasi pada masing-masing digit.
    2. Setelah selesai satu baris, pindah ke baris baru
3. Selesai

| Jawaban Bagian c 
1. Deklarasi integer n, i, j, current
2. Deklarasi array dua dimensi bertipe integer
3. Baca nilai n 
4. Set current = 1
5. Untuk j dari 1 sampai n lakukan:
    1. Jika j adalah ganjil maka:
        1. Untuk i dari 1 sampai n lakukan:
            1. M[i][j] = current
            2. current = current + 1
    2. Jika j adalah genap maka:
        1. untuk i dari n turun ke 1 lakukan:
            1. M[i][j] = current
            2. current = current + 1
6. Untuk i dari 1 sampai n lakukan:
    1. untuk j dari 1 sampai n lakukan:
        1. Cetak M[i][j] diikuti spasi
    2. Cetak newline

| Jawaban bagian d
1. Baca nilai n.
2. Inisialisasi sebuah matriks dua dimensi M[n][n] untuk menampung hasil cetak.
3. Inisialisasi current = 1
4. Untuk setiap kolom j dari 1 sampan n:
    1. Jika j ganjil:
        1. Isi kolom j dari baris i = 1 dengan nilai current, current +1,..., current + (n-1) ascending.
    2. Jika j genap:
        1. Isi kolom j dari baris i = n turun ke i = 1 dengan current, current+1, ..., current+(n-1).
        2. Setelah selesai, set current = current + n
5. Setelah keseluruhan matriks terisi, cetak baris per baris dari i=1 sampai n, setiap baris mencetak M[i][1] M[i][2]...M[i][n], dipisah spasi.
6. Selesai