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

  // =====================
  // Langkah 4
  // =====================
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print('Langkah 4 (promoActive=true): $nav');

  promoActive = false;
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print('Langkah 4 (promoActive=false): $nav2');

   // =====================
  // Langkah 5
  // =====================
  var login = 'Manager';
  var nav3 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory'];
  print(nav3);

  login = 'User';
  var nav4 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory'
  ];
  print('Langkah 5 (login=User): $nav4');

  // =====================
  // Langkah 6
  // =====================
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print('Langkah 6: $listOfStrings');
  assert(listOfStrings[1] == '#1');
}

// ...?list1 digunakan agar list tetap bisa disebarkan walaupun ada elemen null.

// Hasilnya list2 [0, 1, 2, null] dengan panjang 4.

// Jika pakai ...list1 tanpa tanda tanya, bisa error jika list1 bernilai null.
//Kode tidak menghasilkan error karena Dart mendukung collection if dalam list. Jika promoActive = true, maka hasilnya ['Home', 'Furniture', 'Plants', 'Outlet'] karena elemen 'Outlet' ditambahkan. Jika promoActive = false, maka hasilnya ['Home', 'Furniture', 'Plants'] karena 'Outlet' dilewati. Jadi, isi list bergantung pada nilai variabel promoActive.