// @dart=2.9
// ignore: import_of_legacy_library_into_null_safe
import 'dart:io';

import 'package:dart_application_1/user_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'user_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'menu_page.dart';

void saldoTerbaru(int nom) {
  var saldo = user.getSaldo() + nom;
  user.setSaldo(saldo);
}

void saldoCheck() {
  var cek = user.getSaldo();
  print("Saldo Anda Sekarang $cek");
  menu();
}

void topUp() {
  print("========Top Up Saldo========");
  stdout.write("Masukan Jumlah Nominal : ");
  var jum = int.parse(stdin.readLineSync());
  saldoTerbaru(jum);
  var saldo = user.getSaldo();
  print("Saldo Anda Sekarang : $saldo ");
  menu();
}
