import 'package:flutter/material.dart';
import 'package:game_app/screens/explore/popular_channels.dart';
import 'package:game_app/utils/constants.dart';

import 'explore_all.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    switchTo("explore_all");
  }

  switchTo(String widgetName) {
    setState(() {
      switch (widgetName) {
        case "explore_all":
          currentWidgetView = ExploreAll(onPress: () {
            switchTo("popular_channels");
          });
          break;
        case "popular_channels":
          currentWidgetView = PopularChannels(onPress: () {
            switchTo("explore_all");
          });
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        child: currentWidgetView,
      ),
    );
  }
}
