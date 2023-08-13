

import 'package:flutter/material.dart';

class store_provider extends ChangeNotifier{
  List<String>? getAllCategoriesList;
  bool isLoading = true;

    getData() async {
      isLoading = true;
      getAllCategoriesList = categories;
      isLoading = false;
      notifyListeners();
    }
}

List<String> categories = [
  "electronics",
  "jewelery",
  "men's clothing",
  "women's clothing"
];
