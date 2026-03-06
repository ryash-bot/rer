import 'dart:io';

void main() {
  print('=== Kalkulator Sederhana ===');

  stdout.write('Masukkan angka pertama: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  stdout.write('Masukkan angka kedua: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double? hasil;

  switch (operator) {
    case '+':
      hasil = num1 + num2;
      break;
    case '-':
      hasil = num1 - num2;
      break;
    case '*':
      hasil = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        hasil = num1 / num2;
      } else {
        print('Error: Pembagian dengan nol tidak diperbolehkan.');
        return;
      }
      break;
    default:
      print('Operator tidak valid.');
      return;
  }

  print('Hasil: $hasil');
}
