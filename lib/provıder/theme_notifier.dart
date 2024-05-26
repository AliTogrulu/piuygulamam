import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeType { Light, Dark }

class ThemeNotifier with ChangeNotifier {
  //ThemeData _themeData;
 // ThemeType _themeType;
  ThemeData _themeData = ThemeData.light();
  ThemeType _themeType = ThemeType.Light;

  ThemeNotifier() {
    _loadTheme();
  }

  getTheme() => _themeData;

  setTheme(ThemeType themeType) async {
    _themeType = themeType;
    _themeData = _themeType == ThemeType.Dark
        ? ThemeData.dark()
        : ThemeData.light();
    notifyListeners();

    
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme', _themeType.index);
  }

  _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int themeIndex = prefs.getInt('theme') ?? ThemeType.Light.index;
    _themeType = ThemeType.values[themeIndex];
    _themeData = _themeType == ThemeType.Dark
        ? ThemeData.dark()
        : ThemeData.light();
    notifyListeners();
  }
}
