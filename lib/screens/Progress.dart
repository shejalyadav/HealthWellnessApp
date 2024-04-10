import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heath_wellness_app/model/user.dart';
import 'package:heath_wellness_app/screens/MenuDrawer.dart';
import 'package:heath_wellness_app/screens/SignUpPage.dart';
import 'package:lottie/lottie.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class Progress extends StatelessWidget {
   final User user;

  const Progress({super.key, required this.user});
  
  @override
  Widget build(BuildContext context) {
    dynamic now = new DateTime.now();
    String formatter = DateFormat('EEE, MMM d, y', 'en_US').format(now);
    now = now.add(Duration(days: 0));
    String date = DateFormat('d', 'en_US').format(now);
    String day1 = DateFormat('EEE', 'en_US').format(now);
    now = now.add(Duration(days: 1));
    String date2 = DateFormat('d', 'en_US').format(now);
    String day2 = DateFormat('EEE', 'en_US').format(now);
    now = now.add(Duration(days: 1));
    String date3 = DateFormat('d', 'en_US').format(now);
    String day3 = DateFormat('EEE', 'en_US').format(now);
    now = now.add(Duration(days: 1));
    String date4 = DateFormat('d', 'en_US').format(now);
    String day4 = DateFormat('EEE', 'en_US').format(now);

    List<ChartData> chartData = [
      ChartData(
        ' Mental Health',
        10,
      ),
      ChartData('Nutrition', 20),
      ChartData(' Avg Steps', 40),
      ChartData('Meditation', 30),
    ];

    return MaterialApp(
      theme: new ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Progress',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.more_horiz,
                color: Colors.black,
                size: 24,
              ),
            ],
          ),
          iconTheme: IconThemeData(color: Colors.black),
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
        drawer: MenuDrawer(user: user),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The secret of making progress is  to get started.',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 56, 68, 239)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'March 2024',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(14),
                          height: 78,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 12.0),
                              child: Column(children: [
                                Text(
                                  '${day1}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('${date}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))
                              ]),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(9.0),
                          height: 78,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 124, 126, 174),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 12.0),
                              child: Column(children: [
                                Text(
                                  '${day2}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('${date2}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))
                              ]),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(9.0),
                          height: 78,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 124, 126, 174),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 12.0),
                              child: Column(children: [
                                Text(
                                  '${day3}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('${date3}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))
                              ]),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(9.0),
                          height: 78,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 124, 126, 174),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 12.0),
                              child: Column(children: [
                                Text(
                                  '${day4}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('${date4}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                height: 7,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Progress Chart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 300,
                          width: 400,
                          child: Stack(
                            children: [
                              SfCircularChart(
                                legend: Legend(
                                  isVisible: true,
                                  overflowMode: LegendItemOverflowMode.wrap,
                                  alignment: ChartAlignment.center,
                                ),
                                palette: <Color>[
                                  Colors.amber,
                                  Colors.brown,
                                  Colors.green,
                                  Colors.redAccent,
                                ],
                                series: <CircularSeries>[
                                  PieSeries<ChartData, String>(
                                      dataSource: chartData,
                                      xValueMapper: (ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (ChartData data, _) =>
                                          data.y,
                                      radius: '100%',
                                      dataLabelSettings:
                                          DataLabelSettings(isVisible: true),
                                      explode: true,
                                      explodeIndex: 1),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Area Of Improvement',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    
                  ],
                ),
              ),
              SizedBox(
                      height: 20,
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
                        child: Image.asset("assets/images/improve.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'See Areas of Improvement',
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
                                'Refine',
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
                      height: 20,
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  final String x;
  final double y;

  ChartData(this.x, this.y);
}
