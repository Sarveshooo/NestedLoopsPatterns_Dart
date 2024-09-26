import 'dart:io';

void printPattern10(int rows) {
  List<List<int>> matrix = List.generate(rows, (_) => List.filled(rows, 0));
  List<int> differences = [6, 3, 7]; 
  int num = 1;

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < rows; j++) {
      matrix[i][j] = num;
      if (j < differences.length) {
        num += differences[j];
      } else {
        num += 1; 
      }
    }
  }

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < rows; j++) {
      stdout.write("${matrix[i][j]} ");
    }
    print("");
  }
}

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  printPattern10(rows);
}
