//2.Написать функцию, принимающую список int, возвращающую среднее арифметическое чисел из исходного списка. Результат выполнения функции вывести в консоль.
double averageFunction(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum/numbers.length;
}

void main() {
  List<int> numbers = [];
  double average = averageFunction(numbers);
  print('Среднее арифметическое чисел в списке: $average');
}