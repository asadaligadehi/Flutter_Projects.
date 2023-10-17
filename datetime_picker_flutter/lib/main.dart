import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DateTime Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController  dateInput = TextEditingController();
  // var  dateInput = TextEditingController();
  @override
  void initState(){
    super.initState();
    dateInput.text= "";
  }


  @override
  Widget build(BuildContext context) {
     // DateTime dateTime= DateTime.now();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: dateInput,
          decoration: InputDecoration(
            labelText: "Schedule the date ",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            ),
          ),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime(2100),
            );

            if (pickedDate != null) {
              String formattedDate =
              DateFormat('yyyy-MM-dd').format(pickedDate);
              setState(() {
                dateInput.text = formattedDate;
              });
            }
          },
        ),
      ), );
  }
}
