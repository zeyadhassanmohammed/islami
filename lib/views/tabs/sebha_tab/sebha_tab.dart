import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index = 0;
  List<String> azkar = [
    "سبحان الله ",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر"
  ];
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Center(
                child: Image.asset(
              "assets/images/head_of_sebha.png",
              height: 85,
            )),
            Padding(
                padding: EdgeInsets.only(top: 30),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                    onTap: () {
                      zekrIncrement();
                    },
                    child: Image.asset(
                      "assets/images/body_of_sebha.png",
                      height: 250,
                    ),
                  ),
                )),
          ],
        ),
        Text(
          "عدد التسبيحات",
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        Container(
            decoration: BoxDecoration(
                color: Color(0x8CB7935F),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$counter",
                style: GoogleFonts.inder(
                    fontSize: 25, fontWeight: FontWeight.w400),
              ),
            )),
        SizedBox(
          height: 10,
        ),
        Container(
            decoration: BoxDecoration(
                color: Color(0x8CB7935F),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${azkar[index]}",
                style: GoogleFonts.inder(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            )),
      ],
    );
  }

  zekrIncrement() {
    setState(() {
      counter++;
      if (counter % 33==0) {
        index++;
        counter = 0;
      }
      if(index==azkar.length){
        index=0;
      }
      angle+=90;
    });
  }
}
