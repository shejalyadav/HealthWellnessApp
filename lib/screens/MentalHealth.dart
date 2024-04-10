import 'package:flutter/widgets.dart';
import 'package:heath_wellness_app/model/user.dart';
import 'package:heath_wellness_app/screens/MenuDrawer.dart';
import 'package:flutter/material.dart';
import 'package:heath_wellness_app/screens/Progress.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MentalHealth extends StatelessWidget {
   final User user;

  const MentalHealth({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Center(
            child: Row(
              children: [
                Text(
                  'Mental Health',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
              ],
            ),
          ),
          flexibleSpace: Container(
            color: Colors.grey[100],
            height: 100,
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
        drawer: MenuDrawer(user: user,),
        body: SingleChildScrollView(
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
                          'You are stronger than you realize.',
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
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
          
              SizedBox(
                height: 59,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                        padding: EdgeInsets.only(
                          right: 23,
                          left: 28,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42),
                          color: Color.fromARGB(255, 217, 208, 229),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/ebook.png',
                              height: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Ebooks',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                        padding: EdgeInsets.only(right: 23, left: 34),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42),
                          color: Color.fromARGB(255, 217, 208, 229),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/sym.png',
                              height: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Symptoms',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Container(
                        padding: EdgeInsets.only(right: 23, left: 34),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42),
                          color: Color.fromARGB(255, 217, 208, 229),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/mic.png',
                              height: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Podcasts',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
          
              SizedBox(
                height: 25,
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 163, 210, 234),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reinvent The Perspective Of your Mental Health',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                             ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 46),
                                backgroundColor: Color.fromARGB(255, 234, 103, 155),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 160,
                        width: 140,
                        child: Image.asset("assets/images/mhealth.png"),
                      ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(
                height: 25,
              ),

              // favourites
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sleep Analysis',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    
                  ],
                ),
              ),
          
              SizedBox(
                height: 25,
              ),
          
              Column(
                    children: [
                     Container(
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <CartesianSeries>[
                            LineSeries<ChartData, String>(
                                dataSource: [
                                    ChartData('Mon', 25, Colors.red),
                                    ChartData('Tues', 16, Colors.green),
                                    ChartData('Wed', 45, Colors.blue),
                                    ChartData('Thurs', 32, Colors.pink),
                                    ChartData('Fri', 40, Colors.black)
                                ],
                                pointColorMapper:(ChartData data, _) => data.color,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y
                            )
                        ]
                    )
                ), ],),  
          
              SizedBox(
                height: 25,
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Communities',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
          
              SizedBox(
                height: 25,
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
                        height: 150,
                        width: 165,
                        child: Image.asset("assets/images/community.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Explore the communities we have for you',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 46),
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
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
        ChartData(this.x, this.y, this.color);
        final String x;
        final double y;
        final Color color;
    }