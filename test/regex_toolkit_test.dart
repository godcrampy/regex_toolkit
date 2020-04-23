import 'package:regex_toolkit/regex_toolkit.dart';
import 'package:test/test.dart';

void main() {
  group('Common regualer expressions', () {
    setUp(() {
      // awesome = Awesome();
    });

    test('credit card', () {
      var masterCardSample = '5555555555554444';
      var visaSample = '4012888888881881';
      var americanExpressSample = '378282246310005';
      var invalidCard = '987654321098765';

      expect(RegexToolkit.creditCard.hasMatch(masterCardSample), true);
      expect(RegexToolkit.creditCard.hasMatch(visaSample), true);
      expect(RegexToolkit.creditCard.hasMatch(americanExpressSample), true);
      expect(RegexToolkit.creditCard.hasMatch(invalidCard), false);
    });

    test('alpha numeric', () {
      var trueSample = 'test123dart';
      var failSample = 'sheldon@cooper.com';

      expect(RegexToolkit.alphaNumeric.hasMatch(trueSample), true);
      expect(RegexToolkit.alphaNumeric.hasMatch(failSample), false);
    });

    test('alpha numeric with spaces', () {
      var trueSample = 'test 123dart';
      var failSample = 'sheldon@cooper.com';

      expect(RegexToolkit.alphaNumericWithSpaces.hasMatch(trueSample), true);
      expect(RegexToolkit.alphaNumericWithSpaces.hasMatch(failSample), false);
    });

    test('alphabet', () {
      var trueSample = 'Mark';
      var failSample = 'sheldon@cooper.com';

      expect(RegexToolkit.alphabet.hasMatch(trueSample), true);
      expect(RegexToolkit.alphabet.hasMatch(failSample), false);
    });

    test('lowercase alphabet', () {
      var trueSample = 'mark';
      var failSample = 'maRk';

      expect(RegexToolkit.lowercase.hasMatch(trueSample), true);
      expect(RegexToolkit.lowercase.hasMatch(failSample), false);
    });

    test('uppercase alphabet', () {
      var trueSample = 'MARK';
      var failSample = 'MaRK';

      expect(RegexToolkit.uppercase.hasMatch(trueSample), true);
      expect(RegexToolkit.uppercase.hasMatch(failSample), false);
    });

    test('digits', () {
      var trueSample = '874654';
      var failSample = '456e465';

      expect(RegexToolkit.digits.hasMatch(trueSample), true);
      expect(RegexToolkit.digits.hasMatch(failSample), false);
    });

    test('decimals', () {
      var trueSample = '8.74654';
      var failSample = '+456465';

      expect(RegexToolkit.decimals.hasMatch(trueSample), true);
      expect(RegexToolkit.decimals.hasMatch(failSample), false);
    });

    test('signed decimals', () {
      var trueSample = '-8.74654';
      var failSample = '456465/4';

      expect(RegexToolkit.signedDecimals.hasMatch(trueSample), true);
      expect(RegexToolkit.signedDecimals.hasMatch(failSample), false);
    });

    test('username', () {
      var trueSample = 'john-doe';
      var failSample = '@john';

      expect(RegexToolkit.username.hasMatch(trueSample), true);
      expect(RegexToolkit.username.hasMatch(failSample), false);
    });

    test('password moderate', () {
      var trueSample = 'g00dPassw0rd';
      var failSample = 'badpass';

      expect(RegexToolkit.passwordModerate.hasMatch(trueSample), true);
      expect(RegexToolkit.passwordModerate.hasMatch(failSample), false);
    });

    test('password strong', () {
      var trueSample = 'g00dP@ssw0rd';
      var failSample = 'badpass';

      expect(RegexToolkit.passwordStrong.hasMatch(trueSample), true);
      expect(RegexToolkit.passwordStrong.hasMatch(failSample), false);
    });

    test('email Id', () {
      var trueSample = 'sheldon@cooper.com';
      var failSample = 'spam@spammail.reallylong';

      expect(RegexToolkit.emailId.hasMatch(trueSample), true);
      expect(RegexToolkit.emailId.hasMatch(failSample), false);
    });

    test('ipv4 address', () {
      var trueSample = '255.125.205.180';
      var failSample = '255.256.205.180';

      expect(RegexToolkit.ipV4.hasMatch(trueSample), true);
      expect(RegexToolkit.ipV4.hasMatch(failSample), false);
    });

    test('ipv6 address', () {
      var trueSample = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';
      var failSample = '2001:0db8:85a3:0000:0000:0370:7334';

      expect(RegexToolkit.ipV6.hasMatch(trueSample), true);
      expect(RegexToolkit.ipV6.hasMatch(failSample), false);
    });

    test('URL', () {
      var trueSample = 'https://www.google.com';
      var failSample = 'google.fakecom';

      expect(RegexToolkit.url.hasMatch(trueSample), true);
      expect(RegexToolkit.url.hasMatch(failSample), false);
    });

    test('date MMDDYYY', () {
      var trueSample = '06/12/2008';
      var failSample = '06/32/2008';

      expect(RegexToolkit.dateMMDDYYYY.hasMatch(trueSample), true);
      expect(RegexToolkit.dateMMDDYYYY.hasMatch(failSample), false);
    });

    test('date YYYYMMDD', () {
      var trueSample = '2008 12 06';
      var failSample = '2008/12/32';

      expect(RegexToolkit.dateYYYYMMDD.hasMatch(trueSample), true);
      expect(RegexToolkit.dateYYYYMMDD.hasMatch(failSample), false);
    });

    test('SSN', () {
      var trueSample = '445-82-6835';
      var failSample = '121-72-55456';

      expect(RegexToolkit.ssn.hasMatch(trueSample), true);
      expect(RegexToolkit.ssn.hasMatch(failSample), false);
    });

    test('phone number', () {
      var trueSample = '+447911123456';
      var failSample = '+987a9875';

      expect(RegexToolkit.internationalPhoneNumber.hasMatch(trueSample), true);
      expect(RegexToolkit.internationalPhoneNumber.hasMatch(failSample), false);
    });

    test('passport', () {
      var trueSample = '9876543210';
      var failSample = '0000000000';

      expect(RegexToolkit.passport.hasMatch(trueSample), true);
      expect(RegexToolkit.passport.hasMatch(failSample), false);
    });
  });
}
