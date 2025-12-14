class Password {
  String _password = "";

  Password({required String password}) : _password = password;

  String get password => _password;

  set password(String newPassword) {
    _password = newPassword;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUpper = _password.contains(RegExp(r'[A-Z]'));
    bool hasLower = _password.contains(RegExp(r'[a-z]'));
    bool hasDigit = _password.contains(RegExp(r'[0-9]'));

    return hasUpper && hasLower && hasDigit;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
