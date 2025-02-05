import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/views/tabs/hadeth_tab/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  HadethDetails({super.key});
  static const String routeName = "HadethDetails";
  @override
  Widget build(BuildContext context) {
    var hadethModel = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "${hadethModel.title}",
            style: GoogleFonts.elMessiri(
                fontSize: 20, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Card(
              elevation: 10,
              color: Color(0x90F8F8F8),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      "${hadethModel.content[index]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 19),
                      textDirection: TextDirection.rtl,
                    );
                  },
                  itemCount: hadethModel.content.length,
                ),
              )),
        ),
      ),
    );
  }
}
