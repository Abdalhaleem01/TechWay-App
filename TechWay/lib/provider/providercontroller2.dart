
import 'package:flutter/material.dart';
class ProviderController2 extends ChangeNotifier {
  String name2="khaled";

  changeName2(){
  name2="ahmad";
  notifyListeners();
}
}
