# easy_bottom_bar

A Flutter Package to make a Pre-Designed Bottom-Navigation-Bar in few lines. 

## Getting Started

To use this package, add `easy_bottom_bar` as a dependency in your package

## Example

```dart
import 'package:flutter/material.dart';
import 'package:easy_bottom_bar/easy_bottom_bar.dart';

// use EasyBottomBar Widget in Home of your material App And use Scaffold in those importes classe(s)
void main() {
  runApp(MaterialApp(
    home: EasyBottomBar(tabs: [
      FirstScreen(), // Classes where you want to go
      SecondScreen(),
    ], bottomItems: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'FirstScreen'), //You can customize by own if
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'SecondScreen'),// you want
    ]),
  ));
}

// Extra Classes that you want to show.

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
In Your `MaterialApp` use `EasyBottomBar` to show a Bottom Navigation Bar easily
In `tabs` write Widgets/classes which you want to add as HomeScreen

### CurrentIndex
By Default `currentIndex` is set to `0`,but if you want to set another tab of `EasyBottomBar` to default you can change `currentIndex` to 1,2,3 whatever you want.


### Background-Color
Another Property `background-color` set a background-color to your `EasyBottomBar` 
Default Value is `Color.fromRGBO(58, 66, 86, 1.0)` 

Thanks for using my Package 
Happy Coding 