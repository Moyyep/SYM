

import "package:flutter/material.dart";


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final titleController = TextEditingController();
  var payRateVal = "Pay rate";
  final titleController2 = TextEditingController();
  var hoursVal = "Hours";
  final titleController3 = TextEditingController();
  var otRate = "Over Time Rate";
  final titleController4 = TextEditingController();
  var otHours = "Over Time Hours";


  void _setText() {
    setState(() {
      payRateVal = titleController.text;
    });
    setState(() {
      hoursVal = titleController2.text;
    });
    setState(() {
      otRate = titleController3.text;
    });
    setState(() {
      otHours = titleController4.text;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SYM'),
        backgroundColor: Colors.green,
      ),


      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(labelText: 'Pay Rate'),
              controller: titleController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(labelText: 'Hours'),
              controller: titleController2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(labelText: 'Over Time Rate'),
              controller: titleController3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(labelText: 'Over Time Hours'),
              controller: titleController4,
            ),
          ),




          SizedBox(
            height: 8,
          ),
          RaisedButton(
            onPressed: _setText,
            child: Text('Submit'),
            elevation: 8,
          ),
          SizedBox(
            height: 20,
          ),
          Text(payRateVal),
          Text(hoursVal),
          Text(otRate),
          Text(otHours),
        ],
      ),
    );
  }
}










