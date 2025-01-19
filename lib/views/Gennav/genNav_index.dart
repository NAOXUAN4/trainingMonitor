import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:sidebarx/sidebarx.dart';

import '../homePage/homePage_index.dart';

class GenNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GenNavState();
  }
}

class _GenNavState extends State<GenNav> {

  final SidebarXController _controller = SidebarXController(selectedIndex: 0);


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
              width: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SidebarX(
                  controller: _controller,
                  items: [
                    SidebarXItem(
                      icon: Icons.home,
                      label: 'Home',
                      onTap: () {
                        // 处理点击事件
                      },
                    ),
                    SidebarXItem(
                      icon: Icons.settings,
                      label: 'Settings',
                      onTap: () {
                        // 处理点击事件
                      },
                    ),
                    // 添加更多项...
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text('Main Content Area'),
              ),
            ),
          ],
        ),
      ),
    );
  }


}


