import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/radio_image.png",
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "إذاعة القرآن الكريم",
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 90,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Bottom_play_radio.png"),
          ],
        ),
      ],
    );
  }
}
