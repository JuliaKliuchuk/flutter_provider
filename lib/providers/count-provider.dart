import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;
  int get counterValue => _count;

  void _incrementCount() {
    _count++;
    notifyListeners();
  }

  void _decrementCount() {
    _count--;
    notifyListeners();
  }
}
