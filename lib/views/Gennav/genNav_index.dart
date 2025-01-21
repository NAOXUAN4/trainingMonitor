import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:training_monitor/views/user/userPage_index.dart';
import '../homePage/homePage_index.dart';
class GenNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GenNavState();
}

class _GenNavState extends State<GenNav> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      backgroundColor: Colors.white, // Change this to your preferred color
      handleAndroidBackButtonPress: true, // Default true
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default true.
      stateManagement: true, // Default is true.
      decoration: NavBarDecoration(
        colorBehindNavBar: Color(0xff5e2987),
      ),
      navBarStyle: NavBarStyle.style1, // Choose the nav bar style you like
    );
  }

  List<Widget> _buildScreens() {  // 返回页面列表
    return [
      HomePage(),
      UserPage(),
      HomePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {   // 返回底部导航栏列表
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add_reaction),
        title: ("HotKey"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_box),
        title: ("Personal"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
