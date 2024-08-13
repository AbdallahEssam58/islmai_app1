import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islmai_app1/providers/sura_details_provider.dart';
import 'package:islmai_app1/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "suraDetails";

  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    // var provider=Provider.of<SuraDetailsProvider>(context);
    //if(provider.verses.isEmpty){
    //provider.loadSuraFile(model.index);
    //}

    return ChangeNotifierProvider(
        create: (context) => SuraDetailsProvider()..loadSuraFile(model.index),
        builder: (context, child) {
          var provider=Provider.of<SuraDetailsProvider>(context);
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                 // provider.mode==ThemeMode.light?
                  "assets/images/main_bg.png"
                  //"assets/images/main_dark_bg.png",
                ),
              ),
            ),
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  model.name,
                ),
              ),
              body: Card(
                margin: EdgeInsets.all(12),
                color: Color(0x80B7935F),
                elevation: 4,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(
                        "${provider.verses[index]}(${index + 1})",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inder(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      );
                    },
                    itemCount:
                    provider.verses.length,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
