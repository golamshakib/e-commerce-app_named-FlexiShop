import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier {

  int _carouselCurrentIndex = 0;
  int get carouselCurrentIndex => _carouselCurrentIndex;

  void updatePageIndex (int index) {
    _carouselCurrentIndex = index;
     notifyListeners();
  }
}