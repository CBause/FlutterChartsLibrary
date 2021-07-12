import 'package:flutter/material.dart';

export 'package:flutter/material.dart';

class BaseChart extends StatefulWidget {

  @override
  _BaseChartState createState() => _BaseChartState();

}

class _BaseChartState extends State<BaseChart> {
  final key = GlobalKey();
  double _baseChartWidth = 0.0;
  double _baseChartHeight = 0.0;

  @override
  void initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_)
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      key: key,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text("$_baseChartWidth x $_baseChartHeight"),
      ),
    );
  }

}