import 'dart:io';

void printPattern4(int rows) {
  int num = 1;
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows; j++) {
      stdout.write("${num.toRadixString(2)} ");
      num++;
    }
    print("");
  }
}

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  printPattern4(rows);
}
