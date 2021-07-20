/// Flutter code sample for ElevatedButton

// This sample produces an enabled and a disabled ElevatedButton.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Demo Control Led';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Row(
      children:[
        Expanded(
          child: Text(" "),
          flex: 1,
        ),
        ElevatedButton(child: Text("Turn on"), onPressed: (){},),
        Expanded(
          child: Text(" "),
          flex: 1,
        ),
        ElevatedButton(child: Text("Turn off"), onPressed: (){},),
        Expanded(
          child: Text(" "),
          flex: 1,
        ),
      ]
    );
  }
}
