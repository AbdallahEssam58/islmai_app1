import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter=0;
  double angle=0;
  List<String>Azkar=[
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 190),
              child: Image.asset(
                "assets/images/head_sebha_logo.png",
                width: 73,
                height: 105,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 85.0),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  onTap: () {

                   OnTAp();
                  },
                  child: Image.asset(
                    "assets/images/body_sebha_logo.png",
                    width: 232,
                    height: 234,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 36,
        ),
        Text(
          textAlign: TextAlign.center,
          "عدد التسبيحات",
          style:
              GoogleFonts.elMessiri(fontWeight: FontWeight.w600, fontSize: 25),
        ),
        SizedBox(
          height: 26,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "$counter",
                style: GoogleFonts.inder(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
SizedBox(height: 25),
        Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFB7935F),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "${Azkar[index]}",
                    style: GoogleFonts.inder(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),


      ],
    );
  }
  OnTAp(){
    counter++;
    if(counter %33==0){
    index++;
    counter++;
    counter=0;
    }
    if(index==Azkar.length){
      index=0;
    }
    angle+=360/4;
    setState(() {

    });
  }
}
