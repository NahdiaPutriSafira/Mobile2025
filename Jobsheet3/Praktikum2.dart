void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Set tambahan
  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = {}; // Map kosong

  // Tambahkan nama dan NIM
  names1.add("Nahdia Putri Safira");
  names1.add("2341720015");

  names2.addAll({"Nahdia Putri Safira", "2341720015"});

  print("Isi names1: $names1");
  print("Isi names2: $names2");
  print("Isi names3: $names3");
}

//Kode ini membuat sebuah Set berisi lima elemen string. Tipe data Set mirip seperti list, tetapi tidak mengizinkan adanya duplikasi elemen dan tidak menjamin urutan. 
//Saat dijalankan, output akan menampilkan isi set
//Jika ditulis benar, tidak ada error. Tetapi kalau kamu menggunakan tanda kurung kurawal {} tanpa isi, Dart akan menganggapnya sebagai Map, bukan Set. 
//Karena itu, isi harus diberikan agar dikenali sebagai Set.

//Kode tersebut membuat tiga variabel yaitu names1, names2, dan names3. 
//Variabel names1 dan names2 didefinisikan sebagai Set kosong bertipe String, sedangkan names3 merupakan sebuah Map kosong karena dideklarasikan dengan tanda kurung kurawal tanpa tipe data. 
//Selanjutnya, data berupa nama dan NIM ditambahkan ke dalam names1 menggunakan fungsi .add(), sementara pada names2 data ditambahkan sekaligus menggunakan fungsi .addAll(). 
//Akibatnya, kedua variabel tersebut berisi dua elemen string yang sama. Ketika dicetak, program menampilkan isi names1 dan names2 yang berisi nama serta NIM, sedangkan names3 tetap kosong dan ditampilkan sebagai {}.