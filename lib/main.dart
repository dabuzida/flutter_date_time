import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DateTime',
      home: MyDateTime(),
    );
  }
}

class MyDateTime extends StatelessWidget {
  const MyDateTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final int xxx = now.millisecondsSinceEpoch;

    final x = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));

    return Scaffold(
      appBar: AppBar(
        title: const Text('DateTime'),
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(x),
        ],
      ),
    );
  }
}
