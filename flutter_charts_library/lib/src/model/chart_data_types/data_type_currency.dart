import 'abstract_chart_data_type.dart';
import 'currency_type_enum.dart';

export 'currency_type_enum.dart';

abstract class DataTypeCurrency implements AbstractChartDataType {
  static DataTypeCurrency? _currencyEuro;
  static DataTypeCurrency? _currencyDollar;

  static AbstractChartDataType fromCurrency({required CurrencyType currency}) {
    switch(currency) {
      case CurrencyType.dollar: return CurrencyTypeDollar();
      case CurrencyType.euro: return CurrencyTypeEuro();
    }
  }

  static bool hasSpecificCurrencyRuntimeType({required Type type, required CurrencyType currencyType}) {
    if (currencyType == CurrencyType.euro) {
      _currencyEuro ??= CurrencyTypeEuro();
      return type == _currencyEuro.runtimeType;
    }
    _currencyDollar ??= CurrencyTypeDollar();
    return type == _currencyDollar.runtimeType;
  }

  static Type runtimeTypeOfSpecificCurrency({required CurrencyType currencyType}) {
    if (currencyType == CurrencyType.euro) {
      _currencyEuro ??= CurrencyTypeEuro();
      return _currencyEuro.runtimeType;
    }
    _currencyDollar ??= CurrencyTypeDollar();
    return _currencyDollar.runtimeType;
  }

}

class CurrencyTypeEuro implements DataTypeCurrency {

}

class CurrencyTypeDollar implements DataTypeCurrency {

}

