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

    final y = now.add(const Duration(days: 330));

    final int xxx = y.millisecondsSinceEpoch;

    final x = DateFormat('G').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x2 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x3 = DateFormat('M/MM/MMM/MMMM/MMMMM/MMMMMM').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x4 = DateFormat('L/LL/LLL/LLLL/LLLLL/LLLLLL').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x5 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x6 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x7 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x8 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x9 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x10 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));

    return Scaffold(
      appBar: AppBar(
        title: const Text('DateTime'),
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(x),
              Text(x2),
              Text(x3),
              Text(x4),
              Text(x5),
              Text(x6),
              Text(x7),
              Text(x8),
              Text(x9),
              Text(x10),
            ],
          ),
        ),
      ),
    );
  }
}
