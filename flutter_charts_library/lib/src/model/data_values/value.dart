import 'value_properties.dart';

export 'value_properties.dart';

abstract class Value {
  final ValueProperties _valueProperties;

  Value({
    String description = "",
    String tag = "",
    AbstractSecondaryCoordinate? secondaryCoordinate
  }) : _valueProperties = ValueProperties(description: description, tag: tag, secondaryCoordinate: secondaryCoordinate);

  String description() => _valueProperties.description();

  String tag() => _valueProperties.tag();

  AbstractSecondaryCoordinate? secondaryCoordinate() => _valueProperties.secondaryCoordinate();
}