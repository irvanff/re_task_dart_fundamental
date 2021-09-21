// @dart=2.9
import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'food_menu.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'user_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'new_saldo.dart';

void menu() {
  var nama = user.getNama();
  print('======Selamat Datang $nama====== ');
  print("=======================");
  print("1.Menu Makanan");
  print("2.Cek Saldo");
  print("3.Top up Saldo");
  print("4.Exit");
  stdout.write("Pilih Opsi : ");
  opsiMenu();
}

void opsiMenu() {
  var opsi = stdin.readLineSync();
  switch (opsi) {
    case '1':
      foodMenu();
      break;
    case '2':
      saldoCheck();
      break;
    case '3':
      topUp();
      break;
    case '4':
      exit(0);
      break;
    default:
      menu();
  }
}
