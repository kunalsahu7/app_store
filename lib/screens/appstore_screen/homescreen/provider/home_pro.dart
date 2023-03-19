import 'package:flutter/material.dart';
import '../../appscreen/view/app_screen.dart';
import '../../gamescreen/view/game_screen.dart';

class HomeProviderIOS extends ChangeNotifier{

  List Screens = [
    GameScreenIOS(),
    GameScreenIOS(),
    AppScreenIOS(),
  ];
}