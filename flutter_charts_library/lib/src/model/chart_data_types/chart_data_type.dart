import 'abstract_chart_data_type.dart';
import 'data_type_currency.dart';
import 'data_type_number.dart';
import 'data_type_percentage.dart';

export 'currency_type_enum.dart';
export 'abstract_chart_data_type.dart';

abstract class ChartDataType {
  static DataTypeNumber? _dataTypeNumber;
  static DataTypePercentage? _dataTypePercentage;

  static AbstractChartDataType number() => DataTypeNumber();

  static AbstractChartDataType percentage() => DataTypePercentage();

  static AbstractChartDataType currency({required CurrencyType currencyType})
      => DataTypeCurrency.fromCurrency(currency: currencyType);

  static bool hasRuntimeTypeNumber({required Type type}) {
    _dataTypeNumber ??= DataTypeNumber();
    return (_dataTypeNumber.runtimeType == type);
  }

  static bool hasRuntimeTypePercentage({required Type type}) {
    _dataTypePercentage ??= DataTypePercentage();
    return (_dataTypePercentage.runtimeType == type);
  }

  static bool hasRuntimeTypeOfSpecificCurrency({required Type type, required CurrencyType currencyType})
      => DataTypeCurrency.hasSpecificCurrencyRuntimeType(type: type, currencyType: currencyType);

  static Type runtimeTypeNumber() {
    _dataTypeNumber ??= DataTypeNumber();
    return _dataTypeNumber.runtimeType;
  }

  static Type runtimeTypePercentage() {
    _dataTypePercentage ??= DataTypePercentage();
    return _dataTypePercentage.runtimeType;
  }

  static Type runtimeTypeOfSpecificCurrency({required CurrencyType currencyType})
    => DataTypeCurrency.runtimeTypeOfSpecificCurrency(currencyType: currencyType);
}