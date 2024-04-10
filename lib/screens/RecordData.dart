import 'package:flutter/material.dart';
import 'package:heath_wellness_app/model/user.dart';
import 'package:heath_wellness_app/screens/HomePage.dart';
import 'package:heath_wellness_app/screens/MenuDrawer.dart';
import 'package:heath_wellness_app/screens/SignUpPage.dart';


class RecordData extends StatelessWidget {
  final User user;

  const RecordData({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(user: user,),
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Record Data',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 40, 43, 76),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                    color: Colors.deepPurple,
                  ),
                  label: 'Add'),
                  BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                  label: 'Profile')
            ],
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,

          ),
        
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2.0, left: 15),
              child: Column(
                children: [
                  Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wish it. Plan it. Do it.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          
              SizedBox(
                height: 9,
              ),
          
          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 130,
                        width: 150,
                        child: Image.asset("assets/images/goals.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'New Fitness Challenges.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 30),
                                backgroundColor: Colors.deepPurple[300],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Explore',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                              height: 15,
                            ),
                   Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add Your Goals',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
                  Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Exercise',
                        fillColor:
                            Color.fromARGB(255, 180, 104, 216).withOpacity(0.2),
                        filled: true,
                        constraints: BoxConstraints(maxWidth: 300.0),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Meals Taken',
                        fillColor:
                            Color.fromARGB(255, 180, 104, 216).withOpacity(0.2),
                        filled: true,
                        constraints: BoxConstraints(maxWidth: 300.0),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Water Intake',
                        fillColor:
                            Color.fromARGB(255, 180, 104, 216).withOpacity(0.2),
                        filled: true,
                        constraints: BoxConstraints(maxWidth: 300.0),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        constraints: BoxConstraints(maxWidth: 300.0),
                        fillColor:
                            Color.fromARGB(255, 180, 104, 216).withOpacity(0.2),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Mood',
                        hintStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        constraints: BoxConstraints(maxWidth: 300.0),
                        fillColor:
                            Color.fromARGB(255, 180, 104, 216).withOpacity(0.2),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Today's Goal",
                        hintStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        constraints: BoxConstraints(maxWidth: 300.0),
                        fillColor:
                            Color.fromARGB(255, 180, 104, 216).withOpacity(0.2),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
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
                            MaterialPageRoute(builder: (context) => HomePage(user: user)),
                          );
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                height: 30,
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
