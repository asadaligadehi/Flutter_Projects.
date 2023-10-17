import 'package:flutter/material.dart';

import 'next_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 34, 122, 71),
        hintColor: Color.fromARGB(255, 3, 84, 80),
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  TextEditingController dateInput = TextEditingController();

  @override
  // void initState() {
  //   dateInput.text = "";
  //   super.initState();
  // }

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController ucontroller = TextEditingController();
  TextEditingController pcontroller = TextEditingController();
  TextEditingController econtroller = TextEditingController();
  TextEditingController dateController = TextEditingController();
  String email = "";
  String _selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registration Form"),
          backgroundColor: Color.fromARGB(255, 28, 124, 97)),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: formkey,
          child: ListView(
            children: [
              TextFormField(
                controller: econtroller,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }

                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return "Please enter a valid email address";
                  }

                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: ucontroller,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Name!!!";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: pcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: dateController,
                decoration: InputDecoration(
                  labelText: "Date",
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );

                  if (pickedDate != null) {
                    String formattedDateWithDay =
                    DateFormat('EEEE, MMMM d, y').format(pickedDate);
                    setState(() {
                      dateController.text = formattedDateWithDay;
                    });
                  }
                },
              ),

              SizedBox(height: 16.0),
              Text(
                'Select Gender:',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: "male",
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value.toString();
                      });
                    },
                  ),
                  Text("Male"),
                  Radio(
                    value: "female",
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value.toString();
                      });
                    },
                  ),
                  Text("Female"),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Next(
                          username: ucontroller.text,
                          password: pcontroller.text,
                          email: econtroller.text,
                          dob: dateInput.text,
                          gender: _selectedGender,
                        ),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 18, 159, 133)), // Set the button color
                ),
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DateFormat(String s) {}
}
