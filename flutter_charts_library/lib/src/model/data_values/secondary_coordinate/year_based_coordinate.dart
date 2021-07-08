import 'abstract_secondary_coordinate.dart';
import '../../error/model_error.dart';

class YearBasedCoordinate implements AbstractSecondaryCoordinate {
  final int _year;

  YearBasedCoordinate({required int year}) : _year = year {
    if (_year < 0) {
      throw Error.invalidYear;
    }
  }

  int year() => _year;

}