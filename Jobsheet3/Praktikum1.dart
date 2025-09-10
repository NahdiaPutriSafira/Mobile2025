void main() {
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);

list[1] = 1;
assert(list[1] == 1);
print(list[1]);  
}

//Pada saat kode dijalankan program pertama kali membuat sebuah list dengan isi [1, 2, 3]. 
//Kemudian dilakukan menggunakan assert untuk memastikan bahwa panjang list benar bernilai 3 dan bahwa elemen pada indeks ke-1 adalah 2. 
//Karena kedua kondisi ini benar, eksekusi program berlanjut tanpa error. Selanjutnya, program mencetak panjang list yaitu 3 dan nilai pada indeks ke -1 yatu 2. 
//Setelah itu, nilai pada indeks ke-1 diubah dari 2 menjadi 1, lalu kembali dilakukan pengecekan dengan assert  bahwa nilai pada indeks tersebut memang sudah berubah menjadi 1.
//Karena kondisi ini juga benar, program berjalan keluaran program adalah urutan angka 3, 2 dan 1
