import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui_6/screen/provider/HomeProvider.dart';
import 'package:setting_ui_6/screen/view/AndroidPage.dart';
import 'package:setting_ui_6/screen/view/HomePage.dart';
import 'package:setting_ui_6/screen/view/IosPage.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),)
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'I',
        routes: {
          '/':(context) => HomePage(),
          'A':(context) => AndroidPage(),
          'I':(context) => IosPage(),
        },
      ),
    )
  );
}
Widget Androd()
{
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context) => HomePage(),
      'A':(context) => AndroidPage(),
      'I':(context) => IosPage(),
    },
  );
}