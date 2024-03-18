import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _value = 0;

  int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }

  void reset() {
    _value = 0;
    notifyListeners();
  }

  void decrease() {
    _value--;
    notifyListeners();
  }
}
