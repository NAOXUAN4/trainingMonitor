import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:sidebarx/sidebarx.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    // TODO: implement initState

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Monitor"),
      ),
      body: Center(
        child: Row(
          children:[
            SidebarX(
              controller: SidebarXController(selectedIndex: 0),
              items: const [
                SidebarXItem(icon: Icons.home, label: 'Home'),
                SidebarXItem(icon: Icons.info_outline_rounded, label: 'Info'),
              ],
            ),
            Text("monitor"),
            
          ]
        ),
      ),
    );
  }
}