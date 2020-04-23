/// Base class containing all the [RegExp] instances
class RegexToolkit {
  static RegExp creditCard = RegExp(
      r'^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6011[0-9]{12}|622((12[6-9]|1[3-9][0-9])|([2-8][0-9][0-9])|(9(([0-1][0-9])|(2[0-5]))))[0-9]{10}|64[4-9][0-9]{13}|65[0-9]{14}|3(?:0[0-5]|[68][0-9])[0-9]{11}|3[47][0-9]{13})*$');

  static RegExp alphaNumeric = RegExp(r'^[a-zA-Z0-9]*$');

  static RegExp alphaNumericWithSpaces = RegExp(r'^[a-zA-Z0-9 ]*$');

  static RegExp alphabet = RegExp(r'^[a-zA-Z]*$');

  static RegExp lowercase = RegExp(r'^[a-z]*$');
  static RegExp uppercase = RegExp(r'^[A-Z]*$');

  static RegExp digits = RegExp(r'^[0-9]*$');

  static RegExp decimals = RegExp(r'^\d*(\.\d+)?$');

  static RegExp signedDecimals = RegExp(r'^[-+]?\d*(\.\d+)?$');

  /// Alphanumeric, underscores and hyphens allowed with length between 3 to 16 charecters inclusive
  static RegExp username = RegExp(r'^[a-z0-9_-]{3,16}$');

  /// Should have 1 lowercase letter, 1 uppercase letter, 1 number, and be at least 8 characters long
  static RegExp passwordModerate =
      RegExp(r'(?=(.*[0-9]))((?=.*[A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z]))^.{8,}$');

  ///  Should have 1 lowercase letter, 1 uppercase letter, 1 number, 1 special character and be at least 8 characters long
  static RegExp passwordStrong = RegExp(
      r'''(?=(.*[0-9]))(?=.*[\!@#$%^&*()\\[\]{}\-_+=~`|:;"'<>,./?])(?=.*[a-z])(?=(.*[A-Z]))(?=(.*)).{8,}''');

  /// This email regex is not fully RFC5322-compliant, but it will validate most common email address formats correctly.
  static RegExp emailId =
      RegExp(r'^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4})*$');

  static RegExp ipV4 = RegExp(
      r'^((?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))*$');

  static RegExp ipV6 = RegExp(
      r'(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))');

  /// Protocol is optional
  static RegExp url = RegExp(
      r'(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)');

  /// Validate the calendar date in MM/DD/YYYY format with this regex.
  /// Optional separators are spaces, hyphens, forward slashes, and periods.
  /// The year is limited between 1900 and 2099.
  static RegExp dateMMDDYYYY = RegExp(
      r'^((0?[1-9]|1[012])[- /.](0?[1-9]|[12][0-9]|3[01])[- /.](19|20)?[0-9]{2})*$');

  /// Validate the calendar date in YYYY/MM/DD format with this regex.
  /// Optional separators are spaces, hyphens, forward slashes, and periods.
  /// The year is limited between 1900 and 2099.
  static RegExp dateYYYYMMDD = RegExp(
      r'^((19|20)?[0-9]{2}[- /.](0?[1-9]|1[012])[- /.](0?[1-9]|[12][0-9]|3[01]))*$');

  static RegExp ssn = RegExp(r'^([0-9]{3}[-]*[0-9]{2}[-]*[0-9]{4})*$');

  static RegExp internationalPhoneNumber = RegExp(
      r'\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1)\d{1,14}$');

  static RegExp passport = RegExp(r'^(?!^0+$)[a-zA-Z0-9]{3,20}$');
}
