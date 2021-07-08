import 'secondary_coordinate/abstract_secondary_coordinate.dart';

export 'secondary_coordinate/abstract_secondary_coordinate.dart';

class ValueProperties {
  final String _description;
  final String _tag;
  final AbstractSecondaryCoordinate? _secondaryCoordinate;

  ValueProperties({
    String description = "",
    String tag = "",
    AbstractSecondaryCoordinate? secondaryCoordinate
  }) : _description = description, _tag = tag, _secondaryCoordinate = secondaryCoordinate;

  AbstractSecondaryCoordinate? secondaryCoordinate() => _secondaryCoordinate;

  String tag() => _tag;

  String description() => _description;

}