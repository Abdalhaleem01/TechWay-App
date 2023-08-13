import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techway/screens/home/home.dart';
import 'package:techway/screens/navigationPages/favpage.dart';
import 'package:techway/screens/navigationPages/profilepage.dart';
import 'package:techway/screens/navigationPages/trackpage.dart';

class ButtomNavigationScreen extends StatefulWidget {
  const ButtomNavigationScreen({super.key});

  @override
  State<ButtomNavigationScreen> createState() => _ButtomNavigationScreenState();
}

class _ButtomNavigationScreenState extends State<ButtomNavigationScreen> {
  int _selectedIndex = 0;

  List<Widget> bodyScreens = <Widget>[
    const MyHomePage(),
    const favPage(),
   const favPage(),
    const trackPage(),
    const profilePage(),
  ];

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyScreens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFF3E96E9),
        type: BottomNavigationBarType.fixed,
        items: const  <BottomNavigationBarItem>[
           BottomNavigationBarItem(
              
              
              icon: Icon(Icons.home), label: 'Home'),
       
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_sharp),
              label: 'Favorites'
              ),
            BottomNavigationBarItem(
          
              icon: Icon(null),
              label: ''),
           
          BottomNavigationBarItem(
            
              icon: Icon(Icons.location_on_sharp),

              label: 'Track',
              ),
          BottomNavigationBarItem(
               icon: Icon(Icons.person_2_outlined), 
             label: 'Profile'),
        ],
      ),
      
      floatingActionButton: Container(
        width:60.w,
        height: 60.h,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF3E96E9),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {},
          child: Image.asset(
            'assets/icons8-basket-96.png',
          width: 40.w,
          height: 40.h,
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}