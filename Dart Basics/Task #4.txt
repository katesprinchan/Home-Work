//4.Написать функцию, принимающую год (int), возвращающую bool. Результат функции должен отражать является ли год високосным.
bool leapYear(int year) => (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0 && year % 100 == 0); 
//условие для високосного года 

void main() {
  int year = 1924;
  bool isLeapYear = leapYear(year);
  if (isLeapYear) {
    print('Год $year високосный');
  } else {
    print('Год $year невисокосный');
  }
}