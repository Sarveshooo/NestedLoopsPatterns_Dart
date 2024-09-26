import 'dart:io';

void printPattern1(int rows) {
  List<List<int>> matrix = List.generate(rows, (_) => List.filled(rows, 0));
  int num1 = 1, num2 = rows;
  for (int i = 0; i < rows; i++) {
    for (int j = i; j < rows; j++) {
      matrix[rows - j - 1][i] = num1++;
    }
  }
  for (int i = 0; i < rows; i++) {
    for (int j = rows - i - 1; j >= 0; j--) {
      stdout.write("${matrix[i][j]} ");
    }
    print("");
  }
}

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  printPattern1(rows);
}
