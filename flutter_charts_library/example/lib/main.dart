import 'package:flutter/material.dart';
import 'package:flutter_charts_library/flutter_charts_library.dart';

void main() => runApp(FlutterChartsLibraryExample(key: UniqueKey()));

class FlutterChartsLibraryExample extends StatelessWidget {
  final Key _key;
  final String _appTitle = "Flutter charts library example";
  final double _padding = 8.0;

  const FlutterChartsLibraryExample({required Key? key})
      : _key = (key as Key),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_appTitle),
        ),
        body: BaseChart(
            key: UniqueKey(),
            padding: Padding(padding: EdgeInsets.all(_padding))),
      ),
    );
  }
}
