//6.Написать функцию, которая принимает список чисел и возвращает список, содержащий только четные числа из исходного списка.
List<int> evenNumbers(List<int> numbers) {
  List<int> newList = [];
  for (int number in numbers) {
    if (number % 2 == 0) {
      newList.add(number);
    }
  }
  return newList;
}

void main() {
  List<int> numbers = [0, 1, 2, 3, 4, 5];
  List<int> evenNum = evenNumbers(numbers);
  print('Список только с чётными числами: $evenNum');
}