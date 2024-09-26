import 'dart:io';

void printPattern5(int rows) {
  for (int i = 1; i <= rows; i++) {
    for (int j = 0; j < rows; j++) {
      stdout.write("${(i + j - 1) % rows + 1} ");
    }
    print("");
  }
}

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  printPattern5(rows);
}
