import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class Appcontroller extends ChangeNotifier {
  static Appcontroller instance = new Appcontroller();
  bool isDarkTheme = false;

  ChangeTheme() {
    //define a variavel em questao como o inverso de seu valor atual:
    isDarkTheme = !isDarkTheme;
    notifyListeners();
    print('Tema alterado');
  }
}
