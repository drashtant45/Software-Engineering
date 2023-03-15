import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/loginscreen_driver.dart';
import 'package:flutter_application_1/Screens/loginscreen_parents.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 175, 1),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
            height: 65.0,
          ),
          Image(
            image: AssetImage("Images/bus.png"),
            width: 250.0,
            height: 250.0,
            alignment: Alignment.topCenter,
          ),
          SizedBox(height: 50),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginasDriver()));
            },
            icon: Icon(
              Icons.login,
              size: 50.0,
            ),
            label: Text('Login as Driver'), // <-- Text
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginasParent()));
            },
            icon: Icon(
              //     // <-- Icon
              Icons.login,
              size: 50.0,
            ),
            label: Text('Login as Parents'), // <-- Text
          ),
          SizedBox(height: 50),
        ]),
      ),
    );
  }
}
