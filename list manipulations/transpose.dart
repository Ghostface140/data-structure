List TransposeMatrice(List<List<int>> matrice) {
  int n = matrice.length;
  var rotated = List.generate(n, (i) => List.filled(n, 0));

  for (int i = 0; i < matrice.length; i++) {
    for (int j = 0; j < matrice.length; j++) {
      rotated[j][n - 1 - i] = matrice[i][j];
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

void main() {
  print(
    TransposeMatrice([
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
    ]),
  );
}
