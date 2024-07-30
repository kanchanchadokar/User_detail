import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier {
  bool _stateUpdate = false;
  bool get stateUpdate => _stateUpdate;

  void stateNotifier() {
    notifyListeners();
  }

}