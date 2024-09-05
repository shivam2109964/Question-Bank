// Abstraction
abstract class IUserRepository {
  void getUserData();
}

// Low-Level Module
class UserRepository implements IUserRepository {
  @override
  void getUserData() {
    // Fetch user data from a database
    print("Data Fetched");
  }
}

// High-Level Module
class UserService {
  final IUserRepository userRepository;

  UserService(this.userRepository);

  void fetchUser() {
    userRepository.getUserData();
  }
}

void main() {
  // Inject the dependency
  IUserRepository userRepository = UserRepository();
  UserService userService = UserService(userRepository);

  userService.fetchUser();
}
