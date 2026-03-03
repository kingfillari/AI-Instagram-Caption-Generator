import 'package:flutter/material.dart';

class SubscriptionService extends ChangeNotifier {
  bool _isPro = false;

  bool get isPro => _isPro;

  void activatePro() {
    _isPro = true;
    notifyListeners();
  }
}