import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mytask1/screen/destination_view.dart';
import 'package:mytask1/screen/tab_router.dart';
import 'package:mytask1/theme/colors.dart';

import 'components/tabbar_item_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexTab = 0;

  _onTabTapped(int index) {
    log("on tab change 2: $index");
    setState(() {
      _indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Container(
        child: SizedBox.expand(
          child: IndexedStack(
            index: _indexTab,
            children: tabsDestination.map<Widget>((Destination destination) {
              return DestinationView(destination);
            }).toList(),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.instance.getAppTheme(),
        child: const Icon(Icons.add),
        onPressed: () {
          print("object");
          setState(() {
            _indexTab = 2;
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColor.instance.getAppTheme(),
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Container(
          padding: EdgeInsets.only(top: 5),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TabbarItemView(
                  icon: Icons.home,
                  label: "Home",
                  isSelected: _indexTab == 0,
                  onPressed: () {
                    _onTabTapped(0);
                  }),
              TabbarItemView(
                icon: Icons.search,
                label: "Search",
                isSelected: _indexTab == 1,
                onPressed: () {
                  _onTabTapped(1);
                },
              ),
              SizedBox(
                width: 30,
              ),
              TabbarItemView(
                icon: Icons.favorite,
                label: "Favorite",
                isSelected: _indexTab == 2,
                onPressed: () {
                  _onTabTapped(2);
                },
              ),
              TabbarItemView(
                icon: Icons.notifications,
                label: "Noti",
                isSelected: _indexTab == 3,
                onPressed: () {
                  _onTabTapped(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
