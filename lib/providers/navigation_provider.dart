import 'package:flutter/material.dart';
import 'package:habit_now_clone/i18n/en/strings.g.dart';

class NavigationProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateTab(int index) {
    if (index == 3) return;
    _currentIndex = index;
    notifyListeners();
  }

  String get title {
    if (_currentIndex == 0) return t.today;
    if (_currentIndex == 1) return t.habits;
    if (_currentIndex == 2) return t.tasks;
    if (_currentIndex == 3) return t.categories;
    return '';
  }
}
