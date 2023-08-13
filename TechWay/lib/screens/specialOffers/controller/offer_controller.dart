import 'package:flutter/material.dart';
import 'package:techway/screens/specialOffers/models/offers_model.dart';
import 'package:techway/screens/specialOffers/repository/offers_repo.dart';



class SpecialOffersController extends ChangeNotifier{
  List<SpecialOffersModel>? specialOffersDataList;
  bool isLoading = true;

    getData() async{
      isLoading = true;
      specialOffersDataList = await OffersRepo.getSpeaialOffersData();
      isLoading = false;
      notifyListeners();
    }
}