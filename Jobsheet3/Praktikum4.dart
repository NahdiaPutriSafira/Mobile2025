void main() {
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];

  print(list1);
  print(list2);
  print(list2.length);
}

//...list1 disebut spread operator untuk menyalin isi list1 ke dalam list2.
// list2 diawali dengan 0, lalu ditambah isi list1 → hasilnya [0, 1, 2, 3].
// Panjang list2 adalah 4.
// Tidak ada error.