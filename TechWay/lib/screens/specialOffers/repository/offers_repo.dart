import 'dart:developer';
import 'package:techway/screens/specialOffers/models/offers_model.dart';

class OffersRepo {
  static Future<List<SpecialOffersModel>> getSpeaialOffersData() async {
    log('offersRepo:getSpeaialOffersData');
    await Future.delayed(const Duration(seconds: 2));
    List<SpecialOffersModel> specialOffersListModel =
        specialOffersData.map((e) => SpecialOffersModel.fromJson(e)).toList();
    log('specialOffersListModel:length:${specialOffersListModel.length}');
    return specialOffersListModel;
  }
}

List<Map<String, dynamic>> specialOffersData = [
  {
    "id": 1,
    "imageURL": "assets/laptop hp.png",
    "per": 45,
    "des": "SPECIAL DEAL \n FOR JULY",
    "colorss": 0xff3E96E9,
  },
  {
    "id": 2,
    "imageURL": "assets/iphone 14.png",
    "per": 45,
    "des": "SPECIAL DEAL \n FOR JULY",
    "colorss": 0xffF8B415,
  },
  {
    "id": 3,
    "imageURL": "assets/Hyperx_cloud_2.png",
    "per": 65,
    "des": "SPECIAL DEAL \n FOR JULY",
    "colorss": 0xffE9553E,
  },
  {
    "id": 4,
    "imageURL": "assets/ps5.png",
    "per": 76,
    "des": "SPECIAL DEAL \n FOR JULY",
    "colorss": 0xff3EE9DE,
  },
];
