void main() {
  var list = List<String?>.filled(5, null, growable: false);
  list[1] = "Nahdia Putri Safira";
  list[2] = "2341720015"; 
  print(list);
}
//hasil akhirnya adalah sebuah list dengan panjang 5, di mana elemen indeks ke-1 berisi nama kamu, indeks ke-2 berisi NIM kamu, dan indeks lain tetap bernilai null.