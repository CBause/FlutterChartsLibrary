import 'abstract_secondary_coordinate.dart';
import 'date_based_coordinate.dart';
import 'value_based_coordinate.dart';
import 'year_based_coordinate.dart';

abstract class SecondaryCoordinate {
  static ValueBasedCoordinate? _valueBasedCoordinate;
  static YearBasedCoordinate? _yearBasedCoordinate;
  static DateBasedCoordinate? _dateBasedCoordinate;

  static AbstractSecondaryCoordinate valueBased({required double value}) => ValueBasedCoordinate(value: value);

  static AbstractSecondaryCoordinate yearBased({required int year}) => YearBasedCoordinate(year: year);

  static AbstractSecondaryCoordinate dateBased({
    required int year,
    required int month,
    required int day,
  }) => DateBasedCoordinate(year: year, day: day, month: month);

  static Type runtimeTypeValueBasedCoordinate() {
    _valueBasedCoordinate ??= ValueBasedCoordinate(value: 0);
    return _valueBasedCoordinate.runtimeType;
  }

  static Type runtimeTypeYearBasedCoordinate() {
    _yearBasedCoordinate ??= YearBasedCoordinate(year: 1970);
    return _valueBasedCoordinate.runtimeType;
  }

  static Type runtimeTypeDateBasedCoordinate() {
    _dateBasedCoordinate ??= DateBasedCoordinate(year: 1970, month: 1, day: 1);
    return _dateBasedCoordinate.runtimeType;
  }

  static bool hasValueBasedRuntimeType({required Type type}) {
    _valueBasedCoordinate ??= ValueBasedCoordinate(value: 0);
    return type == _valueBasedCoordinate.runtimeType;
  }

  static bool hasYearBasedRuntimeType({required Type type}) {
    _yearBasedCoordinate ??= YearBasedCoordinate(year: 1970);
    return type == _yearBasedCoordinate.runtimeType;
  }

  static bool hasDateBasedRuntimeType({required Type type}) {
    _dateBasedCoordinate ??= DateBasedCoordinate(year: 1970, month: 1, day: 1);
    return type == _dateBasedCoordinate.runtimeType;
  }


}