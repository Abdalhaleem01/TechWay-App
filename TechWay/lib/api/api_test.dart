import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:techway/api/store_provider.dart';

class APItest extends StatefulWidget {
  const APItest({super.key});

  @override
  State<APItest> createState() => _APItestState();
}

class _APItestState extends State<APItest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Consumer<store_provider>(
       builder: (BuildContext context, value, Widget? child) { return Scaffold(body: Container(
          width: 1.sw,
          child: Column(
            children: [Container(
              color: Colors.black,
              width: 100,
              height: 100,
              child: Text("get API",style: TextStyle(color: Colors.white),),
            )],
        
          ),
        ),); },
      
      

    
        
      
    ));
  }
}