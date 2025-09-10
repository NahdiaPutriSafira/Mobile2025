void main() {
  String nama = "Nahdia Putri Safira";
  String nim = "2341728015";

  print("=== Bilangan 0 sampai 201 ===\n");

  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("$i - $nama, NIM: $nim");
    } else {
      print(i);
    }
  }
}

// Fungsi untuk mengecek bilangan prima
bool isPrime(int number) {
  if (number < 2) return false; // bilangan < 2 bukan prima
  for (int j = 2; j <= number ~/ 2; j++) {
    if (number % j == 0) return false;
  }
  return true;
}
