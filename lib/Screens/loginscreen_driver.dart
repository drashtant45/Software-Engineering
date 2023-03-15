import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class LoginasDriver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            icon: Icon(Icons.arrow_back_ios),
            //replace with our own icon data.
          )),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 150.0,
          ),
          Image(
            image: AssetImage("Images/bus.png"),
            width: 390.0,
            height: 250.0,
            alignment: Alignment.center,
          ), // Image
          SizedBox(
            height: 75.0,
          ),
          Text(
            "Login as a Driver",
            style: TextStyle(fontSize: 24.0, fontFamily: "Brand Bold*"),
            textAlign: TextAlign.center,
          ),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ), // InputDecoration
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ), // InputDecoration
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                      side: BorderSide(width: 3, color: Colors.brown),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)),
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                      textStyle: const TextStyle(color: Colors.white)),
                  child: const Text('Login'),
                ),
              ], //IText
            ),
          )
        ],
      ),
    );
  }
}
