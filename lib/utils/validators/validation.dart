class YValidator {

  // -- E M A I L   V A L I D A T I O N
  static String? validateEmail (String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

// -- P A S S W O R D   V A L I D A T I O N
  static String? validatePassword (String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    // Check for the minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }
    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }
    return null;
  }

  // -- P H O N E   N U M B E R   V A L I D A T I O N
  static String? validatePhoneNumber (String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }
    // Regular Expression for phone number validation (assuming BD phone number format)
    final phoneRegExp = RegExp(r'^(?:\+88|88)?01[3-9]\d{8}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).';
    }
    return null;
  }


}