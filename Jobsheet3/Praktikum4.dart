void main() {
  var list1 = [1, 2, null];
  var list2 = [0, ...?list1];

  print(list1);
  print(list2);
  print(list2.length);
}

// ...?list1 digunakan agar list tetap bisa disebarkan walaupun ada elemen null.

// Hasilnya list2 [0, 1, 2, null] dengan panjang 4.

// Jika pakai ...list1 tanpa tanda tanya, bisa error jika list1 bernilai null.