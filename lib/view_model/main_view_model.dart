import 'package:flutter/material.dart';

/// MainPageのViewModelクラス.
class MainViewModel extends ChangeNotifier {
  int count = 0;

  /// カウント数をインクリメントする.
  void incrementCounter() {
    count++;
    notifyListeners();
  }

  /// カウント数を返却する.
  int getCounter() {
    return count;
  }
}
