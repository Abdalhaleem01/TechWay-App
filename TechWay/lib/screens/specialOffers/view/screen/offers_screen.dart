import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:techway/screens/specialOffers/controller/offer_controller.dart';
import 'package:techway/screens/specialOffers/view/widgets/special_offers_item.dart';

class SpecialScreen extends StatefulWidget {
  const SpecialScreen({super.key});

  @override
  State<SpecialScreen> createState() => _SpecialScreenState();
}

class _SpecialScreenState extends State<SpecialScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<SpecialOffersController>(context, listen: false).getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Special Offers'),
        ),
        body: Consumer<SpecialOffersController>(
          builder: (BuildContext context, provider, Widget? child) {
            if (provider.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemCount: provider.specialOffersDataList?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  return offerItem(
                    imageURL: provider.specialOffersDataList?[index].imageURL,
                    per: provider.specialOffersDataList![index].per,
                    des: provider.specialOffersDataList?[index].des,
                    colorss: provider.specialOffersDataList![index].colorss,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const SpecialScreen();
                      }));
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 16.h,
                  );
                },
              ),
            );
          },
        ));
  }
}
