import 'abstract_chart_data.dart';
import 'data_values/complex_value.dart';

export 'chart_data_types/chart_data_type.dart';
export 'data_values/secondary_coordinate/secondary_coordinate.dart';
export 'data_values/complex_value.dart';

class ComplexChartData extends AbstractChartData {

  ComplexChartData({
    required List<ComplexValue> values,
    required AbstractChartDataType chartDataType,
  }) : super(values: values, chartDataType: chartDataType);

  @override
  ComplexValue at(int position) => (super.at(position) as ComplexValue);

}
