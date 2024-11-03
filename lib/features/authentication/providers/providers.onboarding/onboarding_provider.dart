import 'package:flutter/material.dart';

class OnboardingProvider with ChangeNotifier{

  /// Variables
  final pageController = PageController();

  int _currentPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;

  void updatePageIndicator(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  void dotNavigationClick (int index) {
    _currentPageIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }


  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}