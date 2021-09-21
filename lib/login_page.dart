// @dart=2.9
import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'user_page.dart';
import 'menu_page.dart';

void login() {
  if (validasi()) {
    menu();
  } else {
    login();
  }
}

bool validasi() {
  bool signIn = false;
  print("Silahkan Masukan Username Dan Password Anda");
  stdout.write('Username : ');
  var username = stdin.readLineSync();
  stdout.write('Password : ');
  var password = stdin.readLineSync();

  for (Users c in userList) {
    if (username == c.getNama() || password == c.getPass()) {
      user = c;
      signIn = true;
    }
  }
  return signIn;
}
