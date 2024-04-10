
import 'package:flutter/material.dart';
import 'package:heath_wellness_app/main.dart';
import 'package:heath_wellness_app/model/user.dart';
import 'package:heath_wellness_app/screens/HomePage.dart';
import 'package:heath_wellness_app/screens/MentalHealth.dart';
import 'package:heath_wellness_app/screens/RecordData.dart';
import 'package:heath_wellness_app/screens/Progress.dart';

class MenuDrawer extends StatelessWidget {
   final User user;

  const MenuDrawer({super.key, required this.user});
 


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          
          UserAccountsDrawerHeader(
            accountName: Text(
              'Shejal Yadav',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('shejalyadav@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/images/profile.webp'),),
            ),
          ),
          ListTile(
            textColor: Colors.deepPurple,
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
             Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomePage(user: user,)));
            },
          ),
          ListTile(
            textColor: Colors.deepPurple,
            leading: Icon(Icons.health_and_safety),
            title: Text(
              'Mental health',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MentalHealth(user: user)));
            },
          ),
          ListTile(
            textColor: Colors.deepPurple,
            leading: Icon(Icons.align_vertical_bottom),
            title: Text(
              'Progress',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Progress(user: user)));
            },
          ),

           ListTile(
            textColor: Colors.deepPurple,
            leading: Icon(Icons.format_list_bulleted_add),
            title: Text(
              'Record Data',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RecordData(user: user)));
            },
          ),
        ],
      ),
    );
  }
}