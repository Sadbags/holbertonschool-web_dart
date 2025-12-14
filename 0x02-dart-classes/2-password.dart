class Password {
  String password = "";

  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    bool hasUpper = password.contains(RegExp(r'[A-Z]'));
    bool hasLower = password.contains(RegExp(r'[a-z]'));
    bool hasDigit = password.contains(RegExp(r'[0-9]'));

    return hasUpper && hasLower && hasDigit;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}
