import 'dart:io';

void printPattern6(int rows) {
  int num = 12;
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < rows; j++) {
      stdout.write("$num ");
      num += (j % 2 == 0) ? 6 : 2;
    }
    print("");
  }
}

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  printPattern6(rows);
}
