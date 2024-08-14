import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islmai_app1/my_theme_data.dart';
import 'package:islmai_app1/providers/my_provider.dart';
import 'package:islmai_app1/providers/sura_details_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home/bottom_sheets/x.dart';
import 'home/hadeth_details.dart';
import 'home/home.dart';
import 'sura_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyProvider(),
        ),
      ],
      child: EasyLocalization(
          supportedLocales: [Locale('en'), Locale('ar')],
          path: 'assets/translations',
          saveLocale: true, // <-- change the path of the translation files
          child:  MyApp())));
}

class MyApp extends StatelessWidget {
  late MyProvider provider;


  @override
  Widget build(BuildContext context) {
     provider = Provider.of<MyProvider>(context);
     getTheme();
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      themeMode: provider.mode,
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
    );
  }
  Future<void> getTheme()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool("isdark");
    if(isDark!=null){
      if(isDark==true){
        provider.mode=ThemeMode.dark;
      }else{
       provider.mode=ThemeMode.light;
      }
    }
    provider.notifyListeners();
  }
}
