import 'value.dart';

class SimpleValue extends Value {
  final double _value;

  SimpleValue({
    required double value,
    AbstractSecondaryCoordinate? secondaryCoordinate,
    String description = "",
    String tag = "",
  }) : _value = value, super(description: description, tag: tag, secondaryCoordinate: secondaryCoordinate);

  double value() => _value;

}