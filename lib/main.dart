import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islmai_app1/my_theme_data.dart';
import 'package:islmai_app1/providers/my_provider.dart';
import 'package:islmai_app1/providers/sura_details_provider.dart';
import 'package:provider/provider.dart';
import 'home/bottom_sheets/x.dart';
import 'home/hadeth_details.dart';
import 'home/home.dart';
import 'sura_details.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create:(context)=>MyProvider()),
      ChangeNotifierProvider(create:(context)=>SuraDetailsProvider()),
    ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:provider.mode,
      theme:MyThemeData.LightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) =>  HomeScreen(),
        SuraDetailsScreen.routeName:(context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName:(context) => HadethDetailsScreen(),
      },
    );
  }
}