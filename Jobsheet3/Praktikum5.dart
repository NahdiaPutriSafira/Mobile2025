(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
void main() {
  //pemanggilan tukar()
   var hasil = tukar((1, 2));
  print(hasil);
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (String, int) mahasiswa1;
  mahasiswa1 = ('Nahdia', 2341720015);
  print('Langkah 4: $mahasiswa1');
}
