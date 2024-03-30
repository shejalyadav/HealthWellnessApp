import 'package:flutter/material.dart';
import 'package:heath_wellness_app/screens/SignUpPage.dart';
import 'package:heath_wellness_app/screens/HomePage.dart';



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
          Image.asset(
            'assets/images/login.jpg',
            fit: BoxFit.cover,
            width: 700,
            height:850,
          ),
            Padding(
             padding: const EdgeInsets.only(top: 120.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/images/signup.png'),
                    height: 280,
                    width: 400,
                  ),
                  Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        fillColor:
                            Color.fromARGB(255, 180, 104, 216).withOpacity(0.2),
                        filled: true,
                        constraints: BoxConstraints(maxWidth: 300.0),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 180, 104, 216),
                              width: 1.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintStyle: TextStyle(color: Colors.black),
                        constraints: BoxConstraints(maxWidth: 300.0),
                        fillColor:
                            Color.fromARGB(255, 180, 104, 216).withOpacity(0.2),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an Account?',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 63, 63, 63)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: Builder(builder: (context) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 239, 227, 245),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          minimumSize: Size(180, 50),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

