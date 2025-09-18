void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);
}
//penjelasan output
// Variabel gifts menggunakan Map dengan key bertipe String, sedangkan value bisa campuran (String dan int).
// Variabel nobleGases menggunakan Map dengan key bertipe int, sedangkan value juga campuran (String dan int).
// Tidak ada error karena Dart memperbolehkan Map dengan tipe data campuran jika kita tidak menentukan tipe generic (Map<String, String>, dll).