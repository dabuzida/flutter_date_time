import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateTime2 extends StatelessWidget {
  const MyDateTime2({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateTime future = now.add(Duration(hours: 1));
    final int xxx = now.millisecondsSinceEpoch;

    final String hourlyKoreaHead = DateFormat('yyyy년 MM월 dd일 EEEE').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String hourlyKoreaTail = DateFormat('yyyy년 MM월 dd일 EEEE').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String hourlyKorea = hourlyKoreaHead + hourlyKoreaTail;
    final String hourlyUSA = DateFormat('EEEE, MMMM dd, yyyy').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String hourlyJapan = DateFormat('yyyy年 MM月 dd日 EEEE').format(DateTime.fromMillisecondsSinceEpoch(xxx));

    final String dailyKorea = DateFormat('G').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String dailyUSA = DateFormat('G').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String dailyJapan = DateFormat('G').format(DateTime.fromMillisecondsSinceEpoch(xxx));

    final String monthlyKorea = DateFormat('yyyy년 MM월').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String monthlyUSA = DateFormat('MMMM yyyy').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String monthlyJapan = DateFormat('yyyy年 MM月').format(DateTime.fromMillisecondsSinceEpoch(xxx));

    final String x2 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String x3 = DateFormat('M/MM/MMM/MMMM/MMMMM/MMMMMM').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String x4 = DateFormat('L/LL/LLL/LLLL/LLLLL/LLLLLL').format(DateTime.fromMillisecondsSinceEpoch(xxx));
    final String x10 = DateFormat('yyyy-MM-dd ahh:mm').format(DateTime.fromMillisecondsSinceEpoch(xxx));

    return Container(
      // color: Colors.red,
      height: 400,
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('2023년 02월 06일 월 11 - 12:00', style: TextStyle(fontSize: 30)),
              Text(hourlyKorea),
              Text(hourlyUSA),
              Text(hourlyJapan),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('2023년 02월 06일 월', style: TextStyle(fontSize: 30)),
              Text(dailyKorea),
              Text(dailyUSA),
              Text(dailyJapan),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('2022년 02월', style: TextStyle(fontSize: 30)),
              Text(monthlyKorea),
              Text(monthlyUSA),
              Text(monthlyJapan),
            ],
          ),
        ],
      ),
    );
  }

  String _localizeDayToKOR({required String day}) {
    switch (day) {
      case 'Mon':
        return '월';

      case 'Tue':
        return '화';

      case 'Wed':
        return '수';

      case 'Thu':
        return '목';

      case 'Fri':
        return '금';

      case 'Sat':
        return '토';

      case 'Sun':
        return '일';

      default:
        return '';
    }
  }

  String _localizeDayToJPN({required String day}) {
    switch (day) {
      case 'Mon':
        return '月';

      case 'Tue':
        return '火';

      case 'Wed':
        return '水';

      case 'Thu':
        return '木';

      case 'Fri':
        return '金';

      case 'Sat':
        return '土';

      case 'Sun':
        return '日';

      default:
        return '';
    }
  }

  String _localizeDayToENG({required String day}) {
    switch (day) {
      case 'Mon':
        return '月';

      case 'Tue':
        return '火';

      case 'Wed':
        return '水';

      case 'Thu':
        return '木';

      case 'Fri':
        return '金';

      case 'Sat':
        return '土';

      case 'Sun':
        return '日';

      default:
        return '';
    }
  }
}
