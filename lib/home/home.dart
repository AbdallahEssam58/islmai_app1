import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islmai_app1/home/tabs/ahadeth.dart';
import 'package:islmai_app1/home/tabs/quran.dart';
import 'package:islmai_app1/home/tabs/radio.dart';
import 'package:islmai_app1/home/tabs/sebha.dart';
import 'package:islmai_app1/home/tabs/setting.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              'Islmai',
              style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex=value;
              setState(() {});
            },
            backgroundColor: Color(0xFFB7935F),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")), label: "quran",),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")), label: "ahadeth",),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")), label: "sebha",),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")), label: "radio",),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting",),
            ],
          ),
          body:Tabs[selectedIndex] ,
        ),
      ],
    );
  }
  List<Widget>Tabs=[
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingTap(),
  ];
}
