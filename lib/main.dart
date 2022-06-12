import "package:flutter/material.dart";
//import "package:syncfusion_flutter_charts/charts.dart";
import 'package:flutter/physics.dart';

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
  // text fields
  final titleController = TextEditingController();
  final titleController2 = TextEditingController();
  final titleController3 = TextEditingController();
  final titleController4 = TextEditingController();


  //variables
  var payRateVal = "Pay rate";
  var hoursVal = "Hours";
  var otRate = "Over Time Rate";
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

    // Convert str to double
    var payRateD = double.parse(payRateVal);
    var hoursValD = double.parse(hoursVal);
    var otRateD = double.parse(otRate);
    var otHoursD = double.parse(otHours);

    // Calculation output var
    var regPayD = hoursValD * payRateD;
    print(regPayD);
    var otPayD = otHoursD * otRateD;
    print(otPayD);
    var totPayD = regPayD + otPayD;
    print(totPayD);

    // Convert to string for display
    String regPayS = regPayD.toString();
    String otPayS = otPayD.toString();
    String totPayS = totPayD.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SYM'),
        backgroundColor: Colors.lightBlue,
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

          ElevatedButton(
            child:  Text('Ready'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pie()),
              );
            }
          ),
          SizedBox(
            height: 20,
          ),


          // display converted pay in app
          Padding(
            padding: const EdgeInsets.all(15),
            child: RichText(
              text: TextSpan(
                text: otHours,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class Pie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('KMS'),
    ),
    );
  }
}

