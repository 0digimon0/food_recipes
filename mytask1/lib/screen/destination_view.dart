import 'package:flutter/material.dart';
import 'package:mytask1/screen/favorite_tab.dart';
import 'package:mytask1/screen/home_tab.dart';
import 'package:mytask1/screen/notification_tab.dart';
import 'package:mytask1/screen/search_tab.dart';
import 'package:mytask1/screen/tab_router.dart';

class DestinationView extends StatefulWidget {
  final Destination destination;

  DestinationView(this.destination);

  @override
  _StateDestinationView createState() => _StateDestinationView();
}

class _StateDestinationView extends State<DestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          switch (widget.destination.id) {
            case 0:
              return HomeTab();
            case 1:
              return SearchTab();
            case 2:
              return FavoriteTab();
            case 3:
              return NotificationTab();
          }
          return HomeTab();
        });
      },
    );
  }
}
