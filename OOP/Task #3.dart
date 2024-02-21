/3. Реализуйте класс для работы с пользователями из абстрактной базы данных. Класс должен уметь создавать, редактировать, удалять, получать пользователей.

// Для работы с пользователями из абстрактной базы данных выбрала паттерн "репозиторий", паттерн предоставляет абстракцию данных, позволяя клиентам работать с данными, не заботясь о способе их хранения или извлечения.

class User {
  final String id;
  String name;

  User({required this.id, required this.name});

  // Другие свойства и методы пользователя
}

class Database {
  // В реальном приложении здесь будет реализация работы с базой данных
}

class InMemoryDatabase extends Database {
  // В реальном приложении здесь будет реализация работы с базой данных
}

class UserRepository {
  final Database database;

  UserRepository(this.database);

  Future<User> createUser(User user) async {
    // Реализация создания пользователя в базе данных
    // ...
    return user; // В реальном приложении здесь будет возвращаться созданный пользователь
  }

  Future<User> updateUser(User user) async {
    // Реализация обновления пользователя в базе данных
    // ...
    return user; // В реальном приложении здесь будет возвращаться обновленный пользователь
  }

  Future<User> deleteUser(String userId) async {
    // Реализация удаления пользователя из базы данных
    // ...
    return User(id: userId, name: 'Deleted User'); // В реальном приложении здесь будет возвращаться удаленный пользователь
  }

  Future<User> getUser(String userId) async {
    // Реализация получения пользователя из базы данных
    // ...
    return User(id: userId, name: 'User Name'); // В реальном приложении здесь будет возвращаться пользователь
  }

  Future<List<User>> getAllUsers() async {
    // Реализация получения всех пользователей из базы данных
    // ...
    return [User(id: 'user1', name: 'User  1'), User(id: 'user2', name: 'User  2')]; // В реальном приложении здесь будет возвращаться список пользователей
  }
}


void main() async {
  // Создаем экземпляр репозитория с подключением к базе данных
  var userRepository = UserRepository(InMemoryDatabase());

  // Создаем нового пользователя
  var newUser = User(id: 'user1', name: 'New User');
  await userRepository.createUser(newUser);

  // Получаем пользователя по ID
  var user = await userRepository.getUser('user1');

  // Обновляем пользователя
  user.name = 'Updated User';
  await userRepository.updateUser(user);

  // Удаляем пользователя
  await userRepository.deleteUser('user1');

  // Получаем всех пользователей
  var allUsers = await userRepository.getAllUsers();
}