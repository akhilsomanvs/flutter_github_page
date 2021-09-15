class FormValidators {
  static String? emailFieldValidator(value) {
    var val = value.toString();
    bool isEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val);
    if (val.isEmpty || value == null) {
      return "* Required";
    } else if (!isEmail) {
      return "Enter valid Email address";
    } else {
      return null;
    }
  }

  static String? nameFieldValidator(value) {
    var val = value.toString();
    if (val.isEmpty || value == null) {
      return "* Required";
    } else {
      return null;
    }
  }

  static String? passwordFieldValidator(value) {
    var val = value.toString();
    if (val.isEmpty || value == null) {
      return "* Required";
    } else if (val.length < 6) {
      return "Required at least 6+ characters";
    } else {
      return null;
    }
  }
}
