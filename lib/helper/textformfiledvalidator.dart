class TextformFiledValidator {


  // First name validator
  static String? validateFirstName(String value) {
    final RegExp firstNameRegExp = RegExp(r'^[A-Z][a-zA-Z ]*$');
    if (value == null || value.isEmpty) {
      return 'This field must not be empty';
    } else if (!RegExp(r'^[A-Z]').hasMatch(value[0])) {
      return 'First letter must be a capital';
    }else if (!firstNameRegExp.hasMatch(value)) {
      return 'Invalid name';
    }
    return null;
  }






  // static String? validateFirstName(String value) {
  //   final RegExp firstNameRegExp = RegExp(r'^[A-Za-z ]+$');
  //   if (value == null || value.isEmpty) {
  //     return 'This field must not be empty';
  //   } else if (!firstNameRegExp.hasMatch(value)) {
  //     return 'Invalid name';
  //   }
  //   return null;
  // }




  // Last name validator
  static String? validateLastName(String value) {
    final RegExp lastNameRegExp = RegExp(r'^nn[A-Za-z ]+$');
    if (value == null || value.isEmpty) {
      return 'This field must not be empty';
    } else if (!lastNameRegExp.hasMatch(value)) {
      return 'Invalid name';
    }
    return null;
  }

  // Email validator
  static String? validateEmail(String value) {
    final RegExp emailRegExp = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})$');
    if (value == null || value.isEmpty) {
      return 'This field must not be empty';
    } else if (!emailRegExp.hasMatch(value)) {
      return 'ex: example.1234@gmail.com';
    }
    return null;
  }



  // Phone number validator
  static String? validatePhone(String value) {
    final RegExp phoneRegExp = RegExp(r'^\d+$');
    if (value == null || value.isEmpty) {
      return 'This field must not be empty';
    } else if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number';
    }
    return null;
  }



  // address validator
  static String? validateAddress(String value) {
    final RegExp addressRegExp = RegExp(
        r'^[A-Za-z0-9\s.,\-:]+$'
    );

    if (value == null || value.isEmpty) {
      return 'This field must not be empty';
    } else if (!addressRegExp.hasMatch(value)) {
      return 'Ex: address: Dhanmondi-32,';
    }
    return null;
  }


  /*
  *
  * At least one alphabetic character (uppercase or lowercase)
   At least one digit
   At least one special character from the set !@#$%^&*()_+{}|:;"<>?
   The password must be at least 8 characters long
  *
  *
  *
  *
  * */

  static String? validatePassword(String value) {
    final RegExp passwordRegExp = RegExp(
        r'^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[!@#$%^&*()_+{}|:;"<>?])[A-Za-z0-9!@#$%^&*()_+{}|:;"<>?]+$');
    if (value == null || value.isEmpty) {
      return 'This field must not be empty';
    } else if (!passwordRegExp.hasMatch(value)) {
      return 'format:A1@34z 6 character';
    } else if (value.length != 6) {
      return 'Password must be exactly 6 characters long';
    } else if (!value.contains(RegExp(r'[!@#$%^&*()_+{}|:;"<>?]'))) {
      return 'Password must contain at least one special character';
    }
    return null;
  }



}
