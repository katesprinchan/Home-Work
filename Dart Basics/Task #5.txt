//5.Написать функцию, которая принимает строку и возвращает строку со словами в обратном порядке.
String reverseFunction(String str) {
  List<String> words = str.split(' '); //разбиение строки на слова
  List<String> reversedWords = words.reversed.toList();
  return reversedWords.join(' ');
}

void main() {
  String str = "Мама мыла раму";
  String reversed = reverseFunction(str);
  print('Строка со словами в обратном порядке: $reversed');
}