import 'package:flutter/material.dart';
import 'package:easy_bottom_bar/easy_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return EasyBottomBar(
      bottomItems: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Example'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bike_scooter), label: 'Example2'),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Example3'),
        BottomNavigationBarItem(
            icon: Icon(Icons.airline_seat_individual_suite), label: 'Example4'),
      ],
      tabs: [
        Container(
            child: Center(
          child: Icon(Icons.home),
        )),
        Container(
            child: Center(
          child: Icon(Icons.bike_scooter),
        )),
        Container(
            child: Center(
          child: Icon(Icons.movie),
        )),
        Container(
            child: Center(
          child: Icon(Icons.airline_seat_flat),
        ))
      ],
      currentindex: 1,
    );
  }
}
