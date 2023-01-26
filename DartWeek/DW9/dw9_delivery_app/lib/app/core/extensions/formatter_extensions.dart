import 'package:intl/intl.dart';

extension FormatterExtensions on double {
  String get currencyPTBR {
    final currencyFormat =
        NumberFormat.currency(locale: 'pt_BR', symbol: r'R$');
    return currencyFormat.format(this);
  }
}
