import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  ColorsApp();

  static ColorsApp get i {
    _instance ??= ColorsApp();
    return _instance!;
  }

  Color get primary => const Color(0XFF007D21);
  Color get secondary => const Color(0XFFF88B0C);
}

// adiciona a instancia no buildContext de cores
extension ColorsAppExtentions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
