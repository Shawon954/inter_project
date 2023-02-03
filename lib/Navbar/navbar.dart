import 'package:flutter/material.dart';
import 'package:inter_project/Widget/Home_page/home_page.dart';
import 'package:inter_project/Widget/Record_page/record_page.dart';
import 'package:inter_project/Widget/Save_page/save_page.dart';
import 'package:inter_project/Widget/Search_page/search_page.dart';
import 'package:inter_project/Widget/Setteing_page/setting_page.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({Key? key}) : super(key: key);

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  var _CurrentIndex = 0;
   final AllPages = [
     HomePage(),
     SearchPage(),
     RecordPage(),
     SavePage(),
     SettingPage(),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AllPages[_CurrentIndex],

      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(

       borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 5),
            ]
        ),
        child: ClipRRect(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25.0),
    topRight: Radius.circular(25.0),),
    child: BottomNavigationBar(

            selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontFamily:'Inter-Regular.ttf',
              fontSize: 12,
              fontWeight: FontWeight.normal),

          currentIndex: _CurrentIndex,
            onTap: (index){
            setState(() {
              _CurrentIndex = index;
            });
            },

            items: [
             BottomNavigationBarItem(
               icon: Icon(Icons.home,),
               label: 'Home',
             ),
              BottomNavigationBarItem(
               icon: Icon(Icons.search),
               label: 'Search',

             ),
              BottomNavigationBarItem(
               icon: Icon(Icons.emergency_recording_sharp),
                label: 'Recoad',
             ),
              BottomNavigationBarItem(
               icon: Icon(Icons.save),
                label: 'Save',
             ),
              BottomNavigationBarItem(
               icon: Icon(Icons.settings),
                label: 'Setting',
             ),


            ],

          ),
        ),
      ),



    );
  }
}
