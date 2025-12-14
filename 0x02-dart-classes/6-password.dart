class Password {
  String? _password;

  Password({String? password}) : _password = password;

  // Getter
  String? get password => _password;

  // Setter
  set password(String? newPassword) {
    _password = newPassword;
  }

  bool isValid() {
    // si password = null → false
    if (_password == null) return false;

    String p = _password!;

    if (p.length < 8 || p.length > 16) return false;

    bool hasUpper = p.contains(RegExp(r'[A-Z]'));
    bool hasLower = p.contains(RegExp(r'[a-z]'));
    bool hasDigit = p.contains(RegExp(r'[0-9]'));

    return hasUpper && hasLower && hasDigit;
  }

  @override
  String toString() {
    return "Your Password is: ${_password ?? ''}";
  }
}
