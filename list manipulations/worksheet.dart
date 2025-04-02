void main() {
  var matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  print(transpose(matrix));
}
// List<List<int>> matrix(List<List<int>> matrice) {
//   var emptyMatrix = List.generate(3, (_) => List.filled(3, 0));

//   var move = matrice.removeLast();
//   matrice.insert(0, move);
// }

void shiftRowsDown(List<List<int>> matrix) {
  var move = matrix.removeLast();
  matrix.insert(0, move);
}

List transpose(List<List<int>> matrix) {
  int n = matrix.length;
  var rotated = List.generate(n, (i) => List.filled(n, 0));
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      rotated[j][n - 1 - i] = matrix[i][j];
    }
  }
  return rotated;
}

void transpose2(List<List<int>> matrix) {
  int n = matrix.length;

  for (int i = 0; i < n; i++) {
    for (int j = i; j < n; j++) {
      int original = matrix[i][j];
      matrix[j][i] = original;
    }
    for (int i = 0; i < n; i++) {
      matrix[i] = matrix[i].reversed.toList();
    }
  }
}
