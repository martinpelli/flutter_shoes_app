import 'package:flutter/widgets.dart';

class ShoeProvider with ChangeNotifier {
  String _assetImage = 'assets/azul.png';
  double _size = 9.0;

  String get assetImage => _assetImage;

  set assetImage(String value) {
    _assetImage = value;
    notifyListeners();
  }

  double get size => _size;

  set size(double value) {
    _size = value;
    notifyListeners();
  }
}
