import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;


  String? _userPassword;

  User({
    this.id,
    this.name,
    this.age,
    this.height,
    String? user_password,
  })  : _userPassword = user_password,
        super(password: user_password);

  String? get user_password => _userPassword;

  set user_password(String? newPassword) {
    _userPassword = newPassword;
    super.password = newPassword;
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "age": age,
      "height": height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson["id"],
      name: userJson["name"],
      age: userJson["age"],
      height: userJson["height"],
      user_password: userJson["user_password"],
    );
  }

  @override
  set password(String? newPassword) {
    super.password = newPassword;
    user_password = newPassword;
  }

  @override
  String toString() {
    return "User(id : ${id ?? ''} ,name: ${name ?? ''}, age: ${age ?? ''}, height: ${height ?? ''}, Password: ${isValid()})";
  }
}
