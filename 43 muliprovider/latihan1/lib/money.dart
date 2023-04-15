import 'package:flutter/foundation.dart';

class Money with ChangeNotifier {
  int _bakance = 0;

  int get bakance => _bakance;
  set bakance(int value) {
    _bakance = value;
    notifyListeners();
  }
}
