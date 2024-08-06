import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "HadethScreen";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/main_bg.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
