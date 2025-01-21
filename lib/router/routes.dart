import 'package:flutter/material.dart';
import 'package:training_monitor/views/Gennav/genNav_index.dart';
import 'package:training_monitor/views/user/userPage_index.dart';

import '../views/homePage/homePage_index.dart';

class Routes{

  static MaterialPageRoute<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.homePage:
        return pageRoute(
          HomePage(),
          settings: settings,
        );
      case RouteName.userPage:
        return pageRoute(
          UserPage(),
          settings: settings,
        );
      case RouteName.nav:
        return pageRoute(
          GenNav(),
          settings: settings,
        );
      default:
        return pageRoute(
          GenNav(),
          settings: settings,
        );
    }

    return null;
  }

  static MaterialPageRoute<dynamic> pageRoute(Widget page, {
    RouteSettings ?settings,
    bool? fullscreenDialog = false,
    bool? maintainState = true,
    bool? allowSnapshotting
  }){
    return MaterialPageRoute(builder: (context){
      return page;
    },
        settings: settings,
        fullscreenDialog: fullscreenDialog ?? false,
        maintainState: maintainState ?? true,
        allowSnapshotting: allowSnapshotting ?? true);
  }
}



class RouteName{
  static const String nav = "/";
  static const String homePage = "/homePage";
  static const String LoginPage = "/loginPage";
  static const String userPage = "/userPage";

}

