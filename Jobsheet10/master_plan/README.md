1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.

(![FINISH PRAKTIKUM 1](images\PRAKTIKUM1.gif))

2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
Langkah ini membuat "Barrel File" (data_layer.dart) untuk menyatukan (mengekspor) model Plan dan Task. Ini bertujuan untuk membuat proses impor di file lain menjadi lebih ringkas dan bersih (import '../models/data_layer.dart';).

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
Kegunaan: Variabel plan berfungsi sebagai penyimpanan state utama aplikasi, memuat seluruh data tugas (List).
Konstanta (const): Class Plan dan Task bersifat immutable (tidak dapat diubah). Setiap pembaruan (tambah/edit/centang) memerlukan pembuatan objek Plan yang baru (dengan setState()), bukan memodifikasi objek lama.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

(![Demo Tugas 4](images/TUGAS4.gif))


5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
Pada langkah 11 initState() berfungsi untuk bertanggung jawab untuk menginisialisasi sumber daya yang diperlukan, seperti ScrollController, dan mengatur listener untuk menyembunyikan keyboard saat scrolling. Dipanggil hanya sekali saat State pertama kali dibuat.

Sedangkan, dilangkah 13 berfungsi untuk membersihkan (dispose()) sumber daya yang telah dibuat (misalnya ScrollController). Mencegah kebocoran memori dengan memastikan sumber daya tidak terpakai setelah widget dihancurkan. Dipanggil sebelum State dihancurkan.

6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

---

## Praktikum 2: InheritedWidget untuk Manajemen State

### 1. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

**InheritedWidget** yang dimaksud adalah `PlanProvider` yang extends `InheritedNotifier<ValueNotifier<Plan>>`.

**Alasan menggunakan InheritedNotifier:**
- `InheritedNotifier` adalah spesialisasi dari `InheritedWidget` yang secara otomatis merebuild widget-widget yang bergantung padanya ketika notifier berubah
- Dengan `InheritedNotifier`, kita tidak perlu override method `updateShouldNotify()` karena sudah otomatis mendengarkan perubahan dari `ValueNotifier`
- Lebih efisien untuk state management yang menggunakan `ValueNotifier` atau `ChangeNotifier`
- Widget child akan otomatis rebuild hanya ketika `ValueNotifier<Plan>` berubah nilai, bukan setiap kali parent rebuild

### 2. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

Method yang dimaksud adalah method `completedCount` dan `completenessMessage` di class Plan:

```dart
int get completedCount => tasks
  .where((task) => task.complete)
  .length;

String get completenessMessage =>
  '$completedCount out of ${tasks.length} tasks';
```

**Maksud dan Alasan:**
- **`completedCount`**: Menghitung jumlah task yang sudah selesai (complete = true) menggunakan method `.where()` untuk filter
- **`completenessMessage`**: Membuat string pesan progress yang mudah dibaca, menampilkan "X out of Y tasks"
- **Mengapa dilakukan demikian:**
  - Mengikuti prinsip **encapsulation** - logika perhitungan ada di dalam model Plan
  - **Reusable** - bisa dipanggil dari mana saja tanpa perlu menulis ulang logika perhitungan
  - **Reactive** - karena menggunakan getter, nilai akan selalu up-to-date setiap kali diakses
  - Memudahkan maintenance - jika format pesan perlu diubah, cukup edit di satu tempat

### 3. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![Master Plan dengan InheritedNotifier](images\Praktikum2.gif)

**Penjelasan Aplikasi:**

Saya telah membuat aplikasi Master Plan dengan fitur state management menggunakan `InheritedNotifier`:

**Fitur yang diimplementasikan:**
1. **State Management dengan PlanProvider** - Data plan disimpan dan dikelola melalui `ValueNotifier<Plan>` yang dibungkus dalam `InheritedNotifier`
2. **Add Task** - Tombol FloatingActionButton untuk menambah task baru ke dalam list
3. **Checkbox** - Menandai task sebagai complete/incomplete
4. **Edit Task** - TextFormField untuk mengedit deskripsi setiap task
5. **Progress Counter** - Menampilkan jumlah task yang selesai di bagian bawah layar (footer) dalam format "X out of Y tasks"
6. **Reactive UI** - UI otomatis update saat ada perubahan data tanpa perlu `setState()` manual, karena menggunakan `ValueListenableBuilder`

**Keunggulan implementasi:**
- Separation of concerns: Model, Provider, dan View terpisah dengan baik
- Immutable data: Setiap perubahan membuat objek Plan baru
- Efficient rebuilds: Hanya widget yang bergantung pada data yang rebuild
- Clean code: Tidak ada setState() scattered di berbagai tempat
