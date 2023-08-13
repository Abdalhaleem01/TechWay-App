import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:techway/helpers/sp_helper.dart';
import 'package:techway/screens/specialOffers/controller/offer_controller.dart';
import 'package:techway/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SPHelper.spHelper.initSharedPreferences();
  runApp(MultiProvider(providers: [
    // ChangeNotifierProvider(create: (_)=> ProviderController()),
    // ChangeNotifierProvider(create: (_)=> ProviderController2()),
    //   ChangeNotifierProvider.value(value: MyFavoriteController()),


    ChangeNotifierProvider(create: (_) => SpecialOffersController()),
   

  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TechWay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SpalshScreen(),
      // ChangeNotifierProvider.value(
//             value: SpecialOffersController(),
//             child: SpecialScreen())
// //       MultiProvider(providers: [
// ChangeNotifierProvider(create: (_)=> ProviderController(),)
// ,ChangeNotifierProvider(create: (_)=> ProviderController2(),)
//       ],
//       child: providerStateScreen1(),
//       ) ,
     
      );
       },
    );
   
  }
}


