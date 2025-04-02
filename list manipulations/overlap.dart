// List intervals(List <int?> numbers) {

//   var result = [];
//   for (int i = 0; i < numbers.length; i++) {
//     numbers.sort((a, b) {

//     },)
//     var start = numbers[i];
//     var end = numbers[i + 1];
//     if (result.length > 0 && result[result.length - 1] >= end) {
//       continue;
//     }
//     for (int j = i + 1; j < numbers.length; j++) {
//       if (numbers[j]! <= end!) {}
//     }
//   }
//   return result;
// }

// void main() {
//   var num = [8, 3, 5, 2, 8, 9];
//   num.sort((a, b) => a.compareTo(b));

//   print(num);
// }

void main() {
  List<List<int>> intervals = [
    [1, 3],
    [2, 6],
    [8, 10],
    [12, 18],
    [8, 10],
  ];
  intervals.sort((a, b) => a[0].compareTo(b[0]));

}
