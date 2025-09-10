void main() {
  int counter = 0;   // inisialisasi counter

  while (counter < 33) {
    print(counter);
    counter++;
  }
  // reset counter untuk do-while
  counter = 33;

  do {
    print(counter);
    counter++;
  } while (counter < 77);
}
// penjelasan langkah 1 dan 2
//Ketika dijalankan, program akan mencetak angka mulai dari 0 sampai 32.
//Hal ini karena perulangan while terus berjalan selama kondisi counter < 33 bernilai benar. 
//Pada saat counter sudah bernilai 33, kondisi salah dan perulangan berhenti.

//penjelasan langkah 3
//Pada do-while, blok program selalu dijalankan minimal sekali, baru dicek kondisinya.
//Hasilnya: program mencetak angka mulai dari 33 sampai 76.
//Jadi, jika digabung dengan while sebelumnya, output lengkap adalah angka dari 0 sampai 76.
