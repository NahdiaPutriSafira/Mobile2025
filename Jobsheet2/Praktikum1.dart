void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");
}
// penjelasannya
//ketika kode dijalankan, program akan mencetak output "Test2" dan "Test2 again". 
//Hal ini terjadi karena nilai variabel test adalah "test2". 
//Saat blok if pertama diperiksa, kondisi if (test == "test1") bernilai salah, sehingga tidak dijalankan. 
//Program kemudian masuk ke bagian else if (test == "test2"), kondisi ini benar sehingga mencetak "Test2". 
//Setelah itu, program masih melanjutkan ke perintah if (test == "test2") print("Test2 again");. Karena kondisi ini juga benar, maka dicetak lagi "Test2 again". Jadi, hasil akhir ada dua baris output yaitu "Test2" dan "Test2 again".

