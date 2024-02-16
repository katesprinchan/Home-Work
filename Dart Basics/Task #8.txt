//8.Написать функцию, которая принимает два числа (int), первое задает длина шага, второе — кол-во шагов. Результат функции список List<int>, должен отражать пройденную длину на каждом шаге. Результат вывести в консоль
List<int> someFunction({ required int strideLength, required int stepNumber}) {
  List<int> newList = [];
  int a=strideLength; //для подсчета длины за пройденные шаги
  for (int i = 1; i <= stepNumber; i++) {
   newList.add(a);
   a+=strideLength;
  }
  return newList;
}

void main() {
  print(someFunction(strideLength: 3, stepNumber:4));
}