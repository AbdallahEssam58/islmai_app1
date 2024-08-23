import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islmai_app1/home/tabs/ahadeth.dart';
import 'package:islmai_app1/home/tabs/quran.dart';
import 'package:islmai_app1/home/tabs/radio.dart';
import 'package:islmai_app1/home/tabs/sebha.dart';
import 'package:islmai_app1/home/tabs/setting.dart';
import 'package:islmai_app1/my_theme_data.dart';
import 'package:islmai_app1/providers/my_provider.dart';
import 'package:provider/provider.dart';

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
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
            provider.mode==ThemeMode.light?
            "assets/images/main_bg.png":
          "assets/images/main_dark_bg.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'islmai'.tr(),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 45,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex=value;
              setState(() {});
            },
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
