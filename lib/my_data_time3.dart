import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateTime3 extends StatelessWidget {
  const MyDateTime3({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();

    DateTime? dateTime;

    final DateFormat format = DateFormat('MM/dd/yyyy');
    dateTime = format.parseStrict('11/13/1999');
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(format.toString()),
          Text(dateTime.toString()),
        ],
      ),
    );
  }
}
