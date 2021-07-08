import 'year_based_coordinate.dart';
import '../../error/model_error.dart';

class DateBasedCoordinate extends YearBasedCoordinate {
  final int _month;
  final int _day;
  final Map _monthMap = const <int,int>{
    1:31,
    2:29,
    3:31,
    4:30,
    5:31,
    6:30,
    7:31,
    8:31,
    9:30,
    10:31,
    11:30,
    12:31
  };

  DateBasedCoordinate({
    required int year,
    required int month,
    required int day
  }) : _day = day, _month = month, super(year: year) {
    _checkForInconsistency();
  }

  int month() => _month;

  int day() => _day;

  void _checkForInconsistency() {
    if ((_day == 29 && _month == 2 && year() % 4 != 0)
        || (_day > _monthMap[_month])
        || (year() < 0)
        || (_month < 0)
        || (_day < 0) ) {
      throw Error.invalidDate;
    }
  }

}

