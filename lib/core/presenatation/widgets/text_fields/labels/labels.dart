abstract class AppTextFieldLabels {
  static const usernameOrEmail = 'Username or Email';
  static const password = 'Password';
  static const confirmPassword = 'Confirm Password';
}

abstract class AppLabels {
  static const fogotPassword = 'Fogot Password?';
  static const signUpForButton = 'Register';
  static const signInForButton = 'Login';
  static const signInWith = 'Sign In With';
}

abstract class AppHeaders {
  static const welcome = 'Welcome\n Back!';
  static const createAnAccount = 'Create\nan naccount';
}

abstract class AppErrors {
  static const nickname = 'Please enter a valid nickname';
  static const email = 'Please enter a valid email address';
  static const password = 'Please enter a valid password';
  static const confirmPassword = 'Passwords do not match';
}

abstract class AppPasswordError {
  static const length = 'Password must be at least 8 characters';
  static const lowercase =
      'Password must contain at least one lowercase letter';
  static const uppercase =
      'Password must contain at least one uppercase letter';
  static const digit = 'Password must contain at least one digit';
  static const specialSymbol =
      'Password must contain at least one special symbol';
}
