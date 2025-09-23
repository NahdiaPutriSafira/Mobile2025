// 1. Jelaskan yang dimaksud Functions dalam bahasa dart
//Jawab : blok kode yang dapat dijalankan berulang kali untuk menyelesaikan tugas tertentu. Function membantu agar kode lebih rapi, terstruktur, dan mudah digunakan kembali. Function bisa menerima input (parameter), memproses data, dan mengembalikan output (return value).
//2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
//Jawab : Dalam Dart ada beberapa jenis parameter :
// Positional Parameter → Parameter yang urutannya harus sesuai.
void great(String name) {
  print('Hello $name');
}
//Optional Positional Parameter → Ditandai dengan [], bisa diisi atau tidak.
void greet(String name, [String? title]) {
  print('Hello $title $name');
}
//Named Parameter → Ditandai dengan {}, dipanggil dengan nama parameternya.
void gret({required String name, int age = 0}) {
  print('Hello $name, age: $age');
}
//Default Parameter → Parameter diberi nilai bawaan.
void grt(String name, {String city = "Malang"}) {
  print('Hello $name from $city');
}
//3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
//Artinya function di Dart bisa diperlakukan sebagai objek biasa: disimpan di variabel, dikirim sebagai parameter, atau dikembalikan dari function lain.
void sayHello() => print("Hello");
(String, int) getUser() {
  return ('Andi', 20);
}
Function makeCounter() {
  int count = 0;
  return () {
    count++;
    return count;
  };

}
void main() {
  var fungsi = sayHello; // function disimpan di variabel
  fungsi();              // Output: Hello

//4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
//Anonymous function adalah fungsi tanpa nama, biasanya digunakan sekali saja atau langsung sebagai parameter.
var list = ['A', 'B', 'C'];
list.forEach((item) {
  print(item);
});

//5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
//Lexical Scope → Variabel hanya bisa diakses di dalam blok kode tempat ia didefinisikan.

  var name = "Dart";
  void show() {
    print(name); // bisa akses karena dalam scope luar
  }
  show();
//Lexical Closures → Fungsi bisa “mengingat” variabel dari scope luar meskipun scope luar sudah selesai dieksekusi.
  var counter = makeCounter();
  print(counter()); // 1
  print(counter()); // 2

// 6. Jelaskan dengan contoh cara membuat return multiple value di Functions!
//Dart tidak bisa langsung return banyak nilai, tapi bisa menggunakan record atau list/map.
var (userName, userAge) = getUser();
  print('Name: $userName, Age: $userAge'); // Name: Andi, Age: 20
}



