void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) break;            
    if (index > 1 && index < 7) continue; 
    print(index);
  }
}


//program menampilkan urutan bilangan bulat dari 10 hingga 26.
//pada langkah 3 di dalam perulangan ditambahkan perintah if (index == 21) break; yang berfungsi untuk menghentikan perulangan ketika nilai index sama dengan 21. 
//Selain itu, terdapat perintah if (index > 1 && index < 7) continue; yang sebenarnya tidak berpengaruh karena perulangan dimulai dari angka 10, sehingga tidak ada nilai yang memenuhi kondisi tersebut. 
//Dengan adanya break, program hanya mencetak angka dari 10 sampai 20, lalu berhenti saat index bernilai 21.