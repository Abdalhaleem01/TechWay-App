

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techway/provider/provider_controller.dart';
import 'package:techway/provider/providercontroller2.dart';

class providerStateScreen1 extends StatelessWidget {
  const providerStateScreen1({super.key});

  @override
  Widget build(BuildContext context) {
     return Consumer<ProviderController>(builder: (BuildContext context, Provider, Widget? child) { 
log("build:name:ContentSconedProvider");


    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: double.infinity,),
        Text('${Provider.name}'),
        ElevatedButton(onPressed: 
        (){Provider.changeName();}, child: Text("change name")),
        
providerStateScreen2(),
      ]),
      
    );
     },);
  }
}

class providerStateScreen2 extends StatelessWidget {
  const providerStateScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:130,
      child: Consumer<ProviderController2>(builder: (BuildContext context, Provider, Widget? child) { 
    log("build:name:ContentSconedProvider");
    
     return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity,),
          Text('${Provider.name2}'),
          ElevatedButton(onPressed: 
          (){Provider.changeName2();}, child: Text("change name")),
    
    
    
    
        ]),
      );
    
       },),
    );
   
  }
}