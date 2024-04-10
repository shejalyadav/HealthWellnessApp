import 'package:flutter/material.dart';
import 'package:heath_wellness_app/model/user.dart';
import 'package:heath_wellness_app/screens/SignUpPage.dart';
import 'package:heath_wellness_app/screens/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  User user = User();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              height: 850,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Form(
                key: _formKey,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0,),
                      child: TextFormField(
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field is required";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            user.username = value;
                          });
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          fillColor: Color.fromARGB(255, 180, 104, 216)
                              .withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(28.0)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 180, 104, 216),
                                width: 0.5),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0, ),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            user.password = value;
                          });
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          fillColor: Color.fromARGB(255, 180, 104, 216)
                              .withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.0),
                            borderSide:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()),
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
                      child: ElevatedButton(
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
                          final form = _formKey.currentState;
                          if (form!.validate()) {
                            print("Valid Form");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(user: user),
                              ),
                            );
                          } else {
                            print("error in form");
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
