import 'package:intl/intl.dart';

class Validation {
  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'This field must not be empty';
    }
    if (value.contains(RegExp('[0-9]')) || value.contains(RegExp('[a-z]'))) {
      return 'Password must contain letters and nubmers';
    }
    if (value.length < 8) {
      return 'Password must not have less than 8 characters';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return 'This field must not be empty.';
    }
    return null;
  }

  // date validation
  static String? validateDate(DateTime? value) {
    // check if date field not empty
    try {
      DateFormat("yyyy-MM-dd HH:mm").format(value!);
    } catch (e) {
      return 'date is required';
    }
    // date big then today date
    if (DateTime.now().isAfter(value)) {
      return 'date must be bigger then today date';
    }
    return null;
  }

  static double checkDouble(dynamic value) {
    if (value is String) {
      return double.parse(value);
    }if (value  == null) {
      return 0.0;
    }  else {
      return value.toDouble();
    }
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(
            "^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*")
        .hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;

  }
/*
  static String? validatePhone(String? value) {
    if (value!.isEmpty) {
      return 'Phone number is required';
    }
  }

  static String? validateUrl(String? value) {
    if (value!.isEmpty) {
      return 'URL is required';
    }

  }

  static String? validateAge(String? value) {
    int? age = int.tryParse(value!);
    if (age == null || age <= 0) {
      return 'Age must be greater then 0';
    }

  }

  static String? validateNameWithLetterOnly(String?  value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value!.isEmpty) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }

  }

  static String? validateMobile(String? value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value!.isEmpty) {
      return "Mobile is Required";
    } else if(value.length != 10){
      return "Mobile number must 10 digits";
    }else if (!regExp.hasMatch(value)) {
      return "Mobile Number must be digits";
    }

  }

  String? _validateEmail(String? value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value!.isEmpty) {
      return "Email is Required";
    } else if(!regExp.hasMatch(value)){
      return "Invalid Email";
    }else {

    }
  }*/
}
