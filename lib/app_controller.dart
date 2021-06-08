import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController(); // Singleton

  bool isTheme = false;

  void changeTheme() {
    isTheme = !isTheme;
    notifyListeners();
  }
}
