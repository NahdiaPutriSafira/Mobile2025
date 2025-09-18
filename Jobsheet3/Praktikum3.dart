void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // Map dengan tipe eksplisit
  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';

  // Tambahkan nama dan NIM
  gifts['name'] = 'Nahdia Putri Safira';
  gifts['nim'] = '2341720015';

  nobleGases[20] = 'Nahdia Putri Safira';
  nobleGases[21] = '2341720015';

  mhs1['name'] = 'Nahdia Putri Safira';
  mhs1['nim'] = '2341720015';

  mhs2[20] = 'Nahdia Putri Safira';
  mhs2[21] = '2341720015';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
//penjelasan output
// Variabel gifts menggunakan Map dengan key bertipe String, sedangkan value bisa campuran (String dan int).
// Variabel nobleGases menggunakan Map dengan key bertipe int, sedangkan value juga campuran (String dan int).
// Tidak ada error karena Dart memperbolehkan Map dengan tipe data campuran jika kita tidak menentukan tipe generic (Map<String, String>, dll).

//Pada Langkah 1, Map bisa berisi campuran tipe data jika tidak diberi tipe eksplisit.
//Pada Langkah 3, kita bisa membuat Map dengan tipe lebih spesifik (Map<String, String> dan Map<int, String>) agar lebih aman.
//Data tambahan berupa nama dan NIM bisa ditambahkan sebagai key-value baru dalam setiap Map.