import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateTime extends StatelessWidget {
  const MyDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();

    // final y = now.add(const Duration(days: 330));
    // final int xxx = y.millisecondsSinceEpoch;
    final int xxx = now.millisecondsSinceEpoch;

    final x = DateFormat('G').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x2 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x3 = DateFormat('M MM MMM MMMM MMMMM MMMMMM').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x4 = DateFormat('L LL LLL LLLL LLLLL LLLLLL').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x5 = DateFormat('E EE EEE EEEE EEEEE EEEEEE').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x6 = DateFormat('H HH HHH HHHH HHHHH HHHHHH').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x7 = DateFormat('h hh hhh hhhh hhhhh hhhhhh').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x8 = DateFormat('m mm mmm mmmm mmmmm mmmmmm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x9 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));
    final x10 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx, isUtc: false));

    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
