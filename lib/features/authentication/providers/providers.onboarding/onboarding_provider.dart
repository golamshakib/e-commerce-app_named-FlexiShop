import 'package:flexishop/features/authentication/screens.login/login_screen.dart';
import 'package:flutter/material.dart';

class OnboardingProvider with ChangeNotifier{

  /// Variables
  final pageController = PageController();
  int _currentPageIndex = 0;
  int get currentPageIndex => _currentPageIndex;

  /// Update current index when  page scroll
  void updatePageIndicator(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  /// Jump to the specific dot selected page
  void dotNavigationClick (int index) {
    _currentPageIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }

  /// Jump to the last page
  void skipButton () {
    pageController.jumpToPage(2);
  }

  /// Navigate to the next Screen
  void nextButton () {
    if (_currentPageIndex < 2) {
      _currentPageIndex ++;
      pageController.jumpToPage(_currentPageIndex);
      notifyListeners();
    }
  }

  /// Dispose the controller
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}