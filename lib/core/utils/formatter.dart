import 'dart:io';

import 'package:intl/intl.dart';

class Formatter {
  static String formatNumber(num value, int decimalRange) {
    if (decimalRange == 0) return value.toStringAsFixed(0);

    String formatPattern = '#,##0.${'0' * decimalRange}';
    final currentFormatter = NumberFormat(formatPattern, Platform.localeName);
    return currentFormatter.format(value);
  }

  ///Método para formatar o valor do texto para numero
  static num textToNum({required String text, bool isDecimal = true}) {
    if (text.isEmpty) {
      return isDecimal ? 0.0 : 0;
    } else {
      if (isDecimal) {
        if (Platform.localeName == 'pt_BR') {
          text = text.replaceAll('.', '');
          text = text.replaceAll(',', '.');
        } else if (Platform.localeName == 'en_US') {
          text = text.replaceAll(',', '');
        }
        return double.parse(text);
      } else {
        return int.parse(text);
      }
    }
  }
}