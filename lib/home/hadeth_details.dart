import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islmai_app1/providers/my_provider.dart';
import 'package:provider/provider.dart';

import '../hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "HadethScreen";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider=Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
        provider.mode==ThemeMode.light?
        "assets/images/main_bg.png":
        "assets/images/main_dark_bg.png",
        ),
      ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            model.title,
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            margin: EdgeInsets.all(10),
            color: Color(0x80B7935F),
            elevation: 4,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    model.content[index],
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inder(
                      fontSize: 20,
                      color: Color(0xFF242424),
                    ),
                  );
                },
                itemCount: model.content.length,
              ),
          ),
        ),

      ),
    );
  }
}
