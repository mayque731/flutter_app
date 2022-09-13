import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = new AppController();
  bool isDarkTheme = false;

  ChangeTheme() {
    //define a variavel em questao como o inverso de seu valor atual:
    isDarkTheme = !isDarkTheme;
    notifyListeners();
    print('Tema alterado');
  }
}
