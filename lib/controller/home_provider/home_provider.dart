import 'package:flutter/material.dart';

class HomeNotifier extends ChangeNotifier {

  // Favorite build function
  favorite() {
    notifyListeners();
  }
}