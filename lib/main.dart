import 'package:flutter/material.dart';
import 'package:heath_wellness_app/screens/MenuDrawer.dart';
import 'package:heath_wellness_app/screens/SignUpPage.dart';
import 'package:heath_wellness_app/screens/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/home.png'),
                height: 500,
                width: 500,
              ),
              Text(
                'All specialists in One App',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Text(
                  'Empowering Health, Elevating Wellness',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 239, 227, 245),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50),),
                      ),
                      minimumSize: Size(327, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text('Get Started',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                    ),
                    
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

