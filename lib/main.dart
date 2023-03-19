import 'package:app_store/screens/appstore_screen/appscreen/provider/app_pro.dart';
import 'package:app_store/screens/appstore_screen/gamescreen/provider/game_pro.dart';
import 'package:app_store/screens/appstore_screen/gamescreen/view/game_screen.dart';
import 'package:app_store/screens/appstore_screen/homescreen/provider/home_pro.dart';
import 'package:app_store/screens/appstore_screen/homescreen/view/home.dart';
import 'package:app_store/screens/homescreen/appscreen/provider/appprovider.dart';
import 'package:app_store/screens/homescreen/appscreen/view/apppage.dart';
import 'package:app_store/screens/homescreen/game_screen/provider/game_provider.dart';
import 'package:app_store/screens/homescreen/game_screen/view/game_ui.dart';
import 'package:app_store/screens/homescreen/installscreen/provider/install_pro.dart';
import 'package:app_store/screens/homescreen/installscreen/view/install_ui.dart';
import 'package:app_store/screens/homescreen/playstore_screen/provider/palystore_provider.dart';
import 'package:app_store/screens/homescreen/playstore_screen/view/playstore_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => playProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GameProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => InstallProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GameProviderIOS(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProviderIOS(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProviderIOS(),
        ),
      ],
      child: Platform.isAndroid ? IOS() : Android(),
    ),
  );
}

Widget Android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomeScreen(),
      'game': (context) => App(),
      'app': (context) => GameScreen(),
      'install': (context) => InstallingPage(),
    },
  );
}

Widget IOS() {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => HomeScreenIOS(),
      'game screen': (p0) => GameScreenIOS(),
    },
  );
}