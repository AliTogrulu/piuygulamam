import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UiProvider extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  late SharedPreferences storage;

  // Custom dark theme
  final darkTheme = ThemeData(
    primaryColor: Colors.black12,
    brightness: Brightness.dark,
    primaryColorDark: Colors.black12,
  );

  // Custom light theme
  final lightTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
    primaryColorLight: Colors.white,
  );

  get counter => null;

  // Dark mode toggle action
  void changeTheme() {
    _isDark = !_isDark;
    // Save the value to secure storage
    storage.setBool("isDark", _isDark);
    notifyListeners();
  }

  // Initialization method of provider
  void init() async {
    // After we rerun the app
    storage = await SharedPreferences.getInstance();
    _isDark = storage.getBool("isDark") ?? false;
    notifyListeners();
  }
}
