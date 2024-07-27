import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/qur2an_bg.png", height: 227,
          width: 205,),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Text("Sura Names", textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
            return Text("data");
          },
            itemCount: 114,
          ),
        )
      ],
    );
  }
}

