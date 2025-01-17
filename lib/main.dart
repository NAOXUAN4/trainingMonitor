import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
import 'package:training_monitor/router/routes.dart';
import 'package:training_monitor/views/homePage/homePage_index.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(  //设置状态栏透明
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return OKToast(
        child: ScreenUtilInit(
          builder: (context, child) {
            return MaterialApp(
              title: "TrainMonitor",
              theme: ThemeData(
                useMaterial3: true,
              ),
              onGenerateRoute: Routes.generateRoute,   //导入配置好的路由
              initialRoute: RouteName.home,   //设置初始路由路径(String)
            );
          },
        ),
      );
  }
}
