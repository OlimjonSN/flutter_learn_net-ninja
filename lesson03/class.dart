void main(List<String> args) {
  User user = new User('John');
  user.login();

  User user2 = new User('Sara');
  user2.logout();

  SuperUser superUser = new SuperUser('John');
  superUser.publish();
}

class User {
  String? name;
  User(this.name);
  void login() {
    print('$name Login successfully');
  }

  void logout() {
    print('$name Logout successfully');
  }
}

class SuperUser extends User {
  SuperUser(name) : super(name);

  void publish() {
    print('$name published a new post');
  }
}
