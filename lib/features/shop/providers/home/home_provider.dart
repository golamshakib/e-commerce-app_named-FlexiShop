import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier {

  /// variables
  int _carouselCurrentIndex = 0;
  int get carouselCurrentIndex => _carouselCurrentIndex;

  /// -- Update Carousel Page Index Method
  void updatePageIndex (int index) {
    _carouselCurrentIndex = index;
     notifyListeners();
  }
}