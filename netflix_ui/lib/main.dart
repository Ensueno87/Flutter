import 'package:flutter/material.dart';
import 'package:netflix_ui/screen/home_screen_dart.dart';
import 'package:netflix_ui/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'KFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white
      ),
      home: DefaultTabController(
        length:4,
        child: Scaffold(
          body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomeScreen(),
            Container(child: Center(child: Text('search'),),),
            Container(child: Center(child: Text('content'),),),
            Container(child: Center(child: Text('list'),),),
          ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}