import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier{
  int cnt=0;
  int get Count => cnt;
  increment(){
    cnt++;
    notifyListeners();
  }
}