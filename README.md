# Regex Toolkit

![Dart CI](https://github.com/godcrampy/regex_toolkit/workflows/Dart%20CI/badge.svg)

A collection of commonly used regular expressions

## Usage

A simple usage example:

```dart
import 'package:regex_toolkit/regex_toolkit.dart';

void main() {
  var email = 'john@doe.com';

  if (RegexToolkit.emailId.hasMatch(email)) {
    print('Valid Email');
  } else {
    print('Invalid Email');
  }
}

```

### Available Regex

- Simple

  - Alphanumeric (+ with spaces)
  - Alphabet (+ case sensitive)
  - Digits
  - Decimals (+ signed)

- User

  - Username
  - Password
  - Email

- Internet

  - URL
  - IPv4
  - IPv6

- Date

- Identity
  - SSN
  - International Phone Number
  - Passport
  - Credit Card

## Authors

- **Sahil Bondre** - [godcrampy](https://github.com/godcrampy)

This project is licensed under the MIT License - see the [LICENSE](https://github.com/godcrampy/regex_toolkit/blob/master/LICENSE) file for details
