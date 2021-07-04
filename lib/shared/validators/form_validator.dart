import '';

class Validators {
  String? validateName(String name) {
    return name.isEmpty ? "We need a full name" : null;
  }

  String? validateEmail(String email) {
    RegExp regex = RegExp(r'\w+@\w+\.\w+');
    if (email.isEmpty)
      return 'We need an email address';
    else if (!regex.hasMatch(email))
      return "That doesn't look like an email address";
    else
      return null;
  }

  String? validateEmailLogin(String email) {
    RegExp regex = RegExp(r'\w+@\w+\.\w+');
    if (email.isEmpty)
      return 'Enter your registered email';
    else if (!regex.hasMatch(email))
      return "That doesn't look like an email address";
    else
      return null;
  }

  String? validatePassword(String password) {
    RegExp hasUpper = RegExp(r'[A-Z]');
    RegExp hasLower = RegExp(r'[a-z]');
    RegExp hasDigit = RegExp(r'\d');
    if (!RegExp(r'.{8,}').hasMatch(password))
      return 'Passwords must have at least 8 characters';
    if (!hasUpper.hasMatch(password))
      return 'Passwords must have at least one uppercase character';
    if (!hasLower.hasMatch(password))
      return 'Passwords must have at least one lowercase character';
    if (!hasDigit.hasMatch(password))
      return 'Passwords must have at least one number';
    return null;
  }

  String? validatePasswordLogin(String password) {
    if (password.isEmpty) return 'Enter your registered password';
    return null;
  }

  String? validatePasswordConfirmation(String password, String confirm) {
    return (confirm == password) ? null : "The two passwords must match";
  }
}
