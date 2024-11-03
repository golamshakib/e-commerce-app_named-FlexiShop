import 'package:intl/intl.dart';

class YFormatter {

  // -- N U L L A B L E   D A T E   F O R M A T
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  // -- N O R M A L   D A T E   F O R M A T
  static String getFormattedDate (DateTime date, {String pattern = 'dd-MMM-yyyy'}) {
    return DateFormat(pattern).format(date);
  }

  // -- C U R R E N C Y   F O R M A T
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en-US', symbol: '\$').format(amount);
  }

  // -- B D   P H O N E   N U M B E R   F O R M A T
  static String formatBdPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters to clean the input
    phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Check if the phone number is 11 digits long (standard for Bangladesh)
    if (phoneNumber.length == 11 && phoneNumber.startsWith('01')) {
      // Format the phone number as 01XX-XXXXXXX
      return '${phoneNumber.substring(0, 4)}-${phoneNumber.substring(4)}';
    }
    // Return the original number if it doesn't match expected patterns
    return phoneNumber;
  }

  // -- U S   P H O N E   N U M B E R   F O R M A T
  static String formatPhoneNumber(String phoneNumber) {
    //Assuming a 10-digit US phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
     return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    // Add more custom phone number formatting logic dor different formats if needed.
    return phoneNumber;
  }

  // NOT TESTED FULLY
  // -- I N T E R N A  T I O N A L   P H O N E   N U M B E R   F O R M A T
  static String internationalFormatPhoneNumber (String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    //Extract the country code from the digitsOnly
    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    //Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i <digitOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }
      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));

      if (end < digitOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }
    return formattedNumber.toString();
  }
}