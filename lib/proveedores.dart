import 'package:flutter/material.dart';

import 'clases/alimentos.dart';



class SignalMode extends ChangeNotifier {
  late Alimentos _datos;

  Alimentos get nomDatos => _datos;

  set nomDatos(Alimentos datos) {
    _datos = datos;
    notifyListeners();
  }
}
class DatosFuture extends ChangeNotifier {
  late Alimentos _datos1 ;

  Alimentos get nomDatos1 => _datos1;

  set nomDatos1(Alimentos tradu) {
    _datos1 = tradu;
    notifyListeners();
  }
}
