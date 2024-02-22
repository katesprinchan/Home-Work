//4.Реализуйте класс для работы c авторизацией в приложении. 
//Выбрала этот паттерн так как он позволяет определить семейство алгоритмов, заключить каждый из них в отдельный класс и сделать их взаимозаменяемыми
// Интерфейс стратегии аутентификации
abstract class AuthenticationStrategy {
  // Определение метода аутентификации, который будет общим для всех стратегий
  Future<bool> authenticate(String username, String password);
}

// Конкретная реализация стратегии аутентификации
class BasicAuthenticationStrategy implements AuthenticationStrategy {
  @override
  Future<bool> authenticate(String username, String password) async {
    // Реализация базовой аутентификации
    // ...
    return true; // В реальном приложении здесь будет проверка учетных данных
  }
}

// Другая конкретная реализация стратегии аутентификации
class OAuthAuthenticationStrategy implements AuthenticationStrategy {
  @override
  Future<bool> authenticate(String username, String password) async {
    // Реализация аутентификации через OAuth
    // ...
    return true; // В реальном приложении здесь будет проверка учетных данных
  }
}

// Класс контекста, который использует стратегию аутентификации
class AuthenticationService {
  // Поле для хранения ссылки на текущую стратегию аутентификации
  AuthenticationStrategy _strategy;

  // Конструктор, который принимает стратегию аутентификации
  AuthenticationService(this._strategy);

  // Метод для изменения стратегии аутентификации
  void setAuthenticationStrategy(AuthenticationStrategy strategy) {
    _strategy = strategy;
  }

  // Метод для аутентификации пользователя, который делегирует выполнение стратегии
  Future<bool> login(String username, String password) {
    return _strategy.authenticate(username, password);
  }
}

// Пример использования
void main() async {
  // Создаем экземпляр сервиса аутентификации с базовой стратегией
  var authService = AuthenticationService(BasicAuthenticationStrategy());

  // Проверяем аутентификацию с базовой стратегией
  bool isAuthenticated = await authService.login('user', 'password');
  print('Аутентификация: $isAuthenticated');

  // Меняем стратегию аутентификации на OAuth
  authService.setAuthenticationStrategy(OAuthAuthenticationStrategy());

  // Проверяем аутентификацию с новой стратегией
  isAuthenticated = await authService.login('user', 'password');
  print('Аутентификация с OAuth: $isAuthenticated');
}
