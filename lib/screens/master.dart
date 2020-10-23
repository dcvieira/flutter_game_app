import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:game_app/screens/explore/explore.dart';
import 'package:game_app/screens/profile/profile.dart';
import 'package:game_app/screens/search/search.dart';
import 'package:game_app/shared/bottom_navigation_item.dart';
import 'package:game_app/utils/constants.dart';

import 'games/games.dart';

class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  List<bool> bottomNavigationItemStatus = [true, false, false, false];
  Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      currentWidgetView = Explore();
    });
  }

  setCurrentWIdgetView(int index) {
    setState(() {
      switch (index) {
        case 0:
          currentWidgetView = Explore();
          break;
        case 1:
          currentWidgetView = Search();
          break;
        case 2:
          currentWidgetView = Games();
          break;
        case 3:
          currentWidgetView = Profile();
          break;
      }
    });
    bottomNavigationItemStatus = [
      index == 0,
      index == 1,
      index == 2,
      index == 3
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(microseconds: 255),
        child: currentWidgetView,
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.only(bottom: 10),
        color: kBottomNavigationBar,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavigationItem(
              iconData: Icons.home,
              selected: bottomNavigationItemStatus[0],
              onPress: () {
                setCurrentWIdgetView(0);
              },
            ),
            BottomNavigationItem(
              iconData: Icons.search,
              selected: bottomNavigationItemStatus[1],
              onPress: () {
                setCurrentWIdgetView(1);
              },
            ),
            BottomNavigationItem(
              iconData: Ionicons.ios_trophy,
              selected: bottomNavigationItemStatus[2],
              onPress: () {
                setCurrentWIdgetView(2);
              },
            ),
            BottomNavigationItem(
              iconData: Icons.supervised_user_circle,
              selected: bottomNavigationItemStatus[3],
              onPress: () {
                setCurrentWIdgetView(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
