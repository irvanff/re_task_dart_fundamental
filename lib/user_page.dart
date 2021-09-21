// @dart=2.9
class Users {
  String nama;
  String pass;
  int saldo;

  Users(this.nama, this.pass, this.saldo);

  String getNama() {
    return nama;
  }

  String getPass() {
    return pass;
  }

  int getSaldo() {
    return saldo;
  }

  setSaldo(int saldo) {
    this.saldo = saldo;
  }
}

List<Users> userList = [
  Users('Irvan', '123456789', 500000),
  Users('Agus', 'agus2021', 3000000)
];

Users user;
