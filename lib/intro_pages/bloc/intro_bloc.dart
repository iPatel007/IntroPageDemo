import 'package:flutter/material.dart';

class IntroBlocProvider with ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  changePageIndex(int index) {
    _currentPage = index;
    notifyListeners();
  }
}
