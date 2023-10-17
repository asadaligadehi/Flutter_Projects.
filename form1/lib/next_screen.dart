import 'package:flutter/material.dart';
class Next extends StatelessWidget {
  final String username;
  final String password;
  final String email;
  final String dob;
  final String gender;

  Next({
    required this.username,
    required this.password,
    required this.email,
    required this.dob,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Successful"),
        backgroundColor: Color.fromARGB(255, 10, 148, 123),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your registration is complete!",
              style: TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 8, 152, 109),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 40.0,
                color: Color.fromARGB(255, 13, 118, 104), // Set the icon color
              ),
              title: Text(
                "Username:",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 2, 144, 99),
                ),
              ),
              subtitle: Text(
                username,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                size: 40.0,
                color: Color.fromARGB(255, 8, 100, 92),
              ),
              title: Text(
                "Email:",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 9, 143, 100),
                ),
              ),
              subtitle: Text(
                email,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.cake,
                size: 40.0,
                color: Color.fromARGB(255, 13, 104, 81),
              ),
              title: Text(
                "Date of Birth:",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 5, 129, 96),
                ),
              ),
              subtitle: Text(
                dob,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                size: 40.0,
                color: Color.fromARGB(255, 5, 134, 99),
              ),
              title: Text(
                "Gender:",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 7, 137, 104),
                ),
              ),
              subtitle: Text(
                gender,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
