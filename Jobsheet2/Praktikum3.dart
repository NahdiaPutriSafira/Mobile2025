void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) break;
    else if (index > 1 && index < 7) continue;
    print(index);
  }
}
//untuk kode tersebut sudah saya benarkan
//kenapa kode di jobsheet error?
//karena Index ditulis dengan huruf besar di awal, tapi pada bagian lain dipanggil sebagai index (huruf kecil). Dart membedakan huruf besar-kecil, jadi ini dianggap variabel berbeda
//Pada for (Index = 10; index < 27; index), variabel Index/index belum pernah dideklarasikan (int belum ada), jadi compiler tidak tahu tipenya.
//Bagian index++ sudah benar, tapi karena deklarasi tidak ada, tetap error.
//setelah diperbaiki program akan mencetak angka 10 sampai 26 secara berurutan.

//Pada langkah 3, perulangan for berjalan dari 10 sampai 26. 
//Jika index == 21, perulangan dihentikan oleh break, sehingga angka setelah 21 tidak muncul. 
//Kondisi else if (index > 1 && index < 7) tidak berpengaruh karena perulangan dimulai dari 10. 
//Hasil akhirnya hanya menampilkan angka 10 sampai 20.