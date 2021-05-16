import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EasyBottomBar extends StatefulWidget {
  List<Widget> tabs;
  int currentindex = 0;
  List<BottomNavigationBarItem> bottomItems;

  EasyBottomBar({
    @required this.tabs,
    @required this.bottomItems,
    this.currentindex,
  });

  @override
  _EasyBottomBarState createState() => _EasyBottomBarState();
}

class _EasyBottomBarState extends State<EasyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.tabs[widget.currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: widget.bottomItems,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        selectedFontSize: 17,
        currentIndex: widget.currentindex,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        selectedItemColor: Colors.greenAccent,
        // Change Tabs ...
        onTap: (index) {
          setState(() {
            widget.currentindex = index;
          });
        },
      ),
    );
  }
}
