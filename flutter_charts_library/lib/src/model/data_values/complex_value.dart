import 'value.dart';
import 'grouped_value.dart';

class ComplexValue extends Value {
  final List<GroupedValue> _values;

  ComplexValue({
    required List<GroupedValue> values,
    String description = "",
    String tag = "",
    AbstractSecondaryCoordinate? secondaryCoordinate
  }) : _values = values, super(description: description, tag: tag, secondaryCoordinate: secondaryCoordinate);



  List<GroupedValue> copy() => <GroupedValue>[..._values];

  List<GroupedValue> values() => _values;

  GroupedValue at(int position) => _values.elementAt(position);

  int size() => _values.length;

  bool hasValues() => _values.isNotEmpty;

}