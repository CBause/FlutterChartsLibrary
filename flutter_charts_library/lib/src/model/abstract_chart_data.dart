import 'data_values/value.dart';
import 'chart_data_types/chart_data_type.dart';
import 'data_values/secondary_coordinate/abstract_secondary_coordinate.dart';

export 'chart_data_types/chart_data_type.dart';
export 'data_values/secondary_coordinate/abstract_secondary_coordinate.dart';

abstract class AbstractChartData {
  final List<Value> _values;
  final AbstractChartDataType _type;

  AbstractChartData({
    required List<Value> values,
    required AbstractChartDataType chartDataType,
  }) : _values = values, _type = chartDataType;

  String descriptionOfValue(int position) => _values[position].description();

  String tagOfValue(int position) =>  _values[position].tag();

  AbstractSecondaryCoordinate? secondaryCoordinateOfValue(int position) => _values[position].secondaryCoordinate();

  AbstractChartDataType chartDataType() => _type;

  Value at(int position) => _values.elementAt(position);

}