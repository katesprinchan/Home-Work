//3.Написать функцию, принимающую список int, возвращающую строку состоящую из отсортированных чисел исходного списка (от меньшего к большему).
 String sortFunction(List<int> numbers) {
  numbers.sort(); //сортировка листа
  return numbers.join(', '); //преобразование в строку
}

void main() {
  List<int> numbers = [6,5,99,100,8];
  String sortString = sortFunction(numbers);
  print('Отсортированный список: $sortString');
}