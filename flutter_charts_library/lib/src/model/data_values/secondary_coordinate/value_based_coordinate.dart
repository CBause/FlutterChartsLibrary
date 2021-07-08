import 'abstract_secondary_coordinate.dart';

class ValueBasedCoordinate implements AbstractSecondaryCoordinate {
  final double _value;

  ValueBasedCoordinate({required double value}) : _value = value;

  double value() => _value;
}