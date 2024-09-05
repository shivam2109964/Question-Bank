class User {
  String name;
  String email;

  User(this.name, this.email);
}

class UserRepository {
  void saveToDatabase(User user) {
    print("User saved to data base");
  }
}

class EmailServices {
  void sendWelcomeEmail(User user) {
    print("Welcome email sent to ${user.email}");
  }
}
