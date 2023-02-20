import 'package:flutter/material.dart';
import 'package:flutter_date_time/my_data_time2.dart';
import 'package:flutter_date_time/my_data_time3.dart';
import 'my_data_time.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Widget currentWidget = MyDateTime();
    const Widget currentWidget2 = MyDateTime2();
    return MaterialApp(
      title: 'DateTime',
      home: Scaffold(
        appBar: AppBar(
          title: Text('DateTime: ${currentWidget.toString()}'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                // width: 600,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    currentWidget2,
                    Divider(color: Colors.red),
                    currentWidget,
                    Divider(color: Colors.green),
                    MyDateTime3(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
