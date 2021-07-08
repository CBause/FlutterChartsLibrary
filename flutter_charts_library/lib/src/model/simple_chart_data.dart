import 'abstract_chart_data.dart';
import 'data_values/simple_value.dart';

export 'chart_data_types/chart_data_type.dart';
export 'data_values/secondary_coordinate/secondary_coordinate.dart';
export 'data_values/simple_value.dart';

class SimpleChartData extends AbstractChartData {

  SimpleChartData({
    required List<SimpleValue> values,
    required AbstractChartDataType chartDataType,
  }) : super(values: values, chartDataType: chartDataType);

  @override
  SimpleValue at(int position) => (super.at(position) as SimpleValue);
}