
import 'package:flutter/material.dart';
class ProviderController extends ChangeNotifier {
  String name="ahmad";

  changeName(){
  name="ali";
  notifyListeners();
}
}
