import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heath_wellness_app/model/user.dart';
import 'package:heath_wellness_app/screens/HomePage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  User user = User();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
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
              height: 870,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/signup2.png'),
                      height: 260,
                      width: 400,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: TextFormField(
                        controller: _firstNameController,
                         validator: (value) {
                                          if (value == null || value.isEmpty) {
                      return "This field is required";
                                          }
                                        },
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          fillColor: Color.fromARGB(255, 180, 104, 216)
                              .withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(28.0)),
                            borderSide: BorderSide(
                                color: Colors.black, width: 1.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: TextFormField(
                        controller: _lastNameController,
                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                      return "This field is required";
                                          }
                                        },
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          fillColor: Color.fromARGB(255, 180, 104, 216)
                              .withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(28.0)),
                            borderSide: BorderSide(
                                color: Colors.black, width: 1.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: TextFormField(
                        controller: _usernameController,
                       validator: (value) {
                                          if (value == null || value.isEmpty) {
                      return "This field is required";
                                          }
                                        },
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                        
                        decoration: InputDecoration(
                          labelText: 'Username',
                          fillColor: Color.fromARGB(255, 180, 104, 216)
                              .withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(28.0)),
                            borderSide: BorderSide(
                                color: Colors.black, width: 1.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        ),
                        style: TextStyle(color: Colors.black),
                        onChanged: (value) {
                          setState(() {
                            user.username = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
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
                         autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          fillColor: Color.fromARGB(255, 180, 104, 216)
                              .withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(28.0)),
                            borderSide: BorderSide(
                                color: Colors.black, width: 1.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 30.0),
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
                          'Signup',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _firstNameController.dispose();
    _lastNameController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
