import 'package:flutter/material.dart';

class Citas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentSelectedDate;

  Future<DateTime> getDatePickerWidget() {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      //initialDate: _currentSelectedDate,

      firstDate: DateTime(2021),
      lastDate: DateTime(2022),
      builder: (context, child) {
        return Theme(data: ThemeData.dark(), child: child);
      },
    );
  }

  void callDatePicker() {
    var selectedDate = getDatePickerWidget();
    setState(() {
      _currentSelectedDate = selectedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Citas y Agendamientos'),
          ),
          body: Column(children: [
            RaisedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2022),
                );
              }, //callDatePicker,
              child: Text('DatePicker'),
            )
            //Text('$_currentSelectedDate'),
          ])),
    );
  }
}
