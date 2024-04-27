import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int? _limit;
  int _limitReached = 0;
  int get count => _count;
  int get limitReached => _limitReached;

  void increment() {
    _count++;
    changeLimitReached();
    notifyListeners();
  }

  void decrement() {
    _count--;
    changeLimitReached();
    notifyListeners();
  }

  void setStartedCount(int count) {
    _count = count;
    changeLimitReached();
    notifyListeners();
  }

  void changeLimitReached() {
    if (_limit != null) {
      _limitReached = _limit! - _count;
    } else {
      _limitReached = 0;
    }
    notifyListeners();
  }

  void changeLimit(int? limit) {
    _limit = limit;
    changeLimitReached();
  }
}
