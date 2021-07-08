import 'value.dart';

class GroupedValue extends Value {
  final double _value;

  GroupedValue({
    required double value,
    String tag = "",
    String description = ""
  }) : _value = value, super(tag: tag, description: description);

  double value() => _value;


}