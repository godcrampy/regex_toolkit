import 'package:regex_toolkit/regex_toolkit.dart';

void main() {
  var email = 'john@doe.com';

  if (RegexToolkit.emailId.hasMatch(email)) {
    print('Valid Email');
  } else {
    print('Invalid Email');
  }
}
