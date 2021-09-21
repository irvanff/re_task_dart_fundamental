import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'package:dart_application_1/menu_page.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'user_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'new_saldo.dart';

void foodMenu() {
  bool isPickMenu = true;
  while (isPickMenu) {
    print("======Menu Makanan======");
    print("1. Cheese Double Burger  ||  50k");
    print("2. Mac&Cheese || 35k");
    print("3. Beef Steak Wagyu A9  || 300k");
    print("4. Chicken Mushroom Sauce  || 100k");
    stdout.write("Pilih Menu : ");
    doMenu();
    stdout.write('Ingin Tambah Menu  y/t: ');
    var inp = stdin.readLineSync();
    if (inp == 'y') {
      isPickMenu = true;
    } else {
      isPickMenu = false;
      menu();
    }
  }
}

void doMenu() {
  int harga;
  var sisaSaldo = user.getSaldo();
  var food = stdin.readLineSync();

  switch (food) {
    case '1':
      harga = 50000;
      if (user.getSaldo() > harga) {
        saldoTerbaru(-harga);
        print("Anda Membeli Cheese Double Burger , harga : Rp.$harga");
        print("Sisa Saldo Anda $sisaSaldo");
      } else {
        print("Saldo Anda Kurang");
      }
      break;
    case '2':
      harga = 35000;
      if (user.getSaldo() > harga) {
        saldoTerbaru(-harga);
        print("Anda Membeli Mac&Cheese ,  harga : Rp. $harga");
        print("Sisa Saldo Anda $sisaSaldo");
      } else {
        print("Saldo Anda Kurang");
      }
      break;
    case '3':
      harga = 300000;
      if (user.getSaldo() > harga) {
        saldoTerbaru(-harga);
        print("Anda Membeli Beef Steak Wagyu A9, harga : Rp. $harga");
        print("Sisa Saldo Anda $sisaSaldo");
      } else {
        print("Saldo Anda Kurang");
      }
      break;
    case '4':
      harga = 100000;
      if (user.getSaldo() > harga) {
        saldoTerbaru(-harga);
        print("Anda Membeli Chicken Mushroom Sauce, harga : Rp. $harga");
        print("Sisa Saldo Anda $sisaSaldo");
      }
  }
}
