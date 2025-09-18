void main() {
  var list1 = [1, 2, null];
  var list2 = [0, ...?list1];

   // Tambahkan list NIM
  var nim = ['2341720015'];          // list berisi NIM
  var list3 = [...list2, ...nim];

  print(list1);
  print(list2);
  print(list2.length);
  print(list3);
}

// ...?list1 digunakan agar list tetap bisa disebarkan walaupun ada elemen null.

// Hasilnya list2 [0, 1, 2, null] dengan panjang 4.

// Jika pakai ...list1 tanpa tanda tanya, bisa error jika list1 bernilai null.