import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/views/tabs/quran_tab/quran_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";
  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var quranModel = ModalRoute.of(context)?.settings.arguments as QuranModel;
    if (verses.isEmpty) {
      loadSuraFiles(quranModel.suraIndex);
      setState(() {});
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text(
            quranModel.suraName,

          ),

        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      "${verses[index]} (${index + 1}) ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                      textDirection: TextDirection.rtl,
                    );
                  },
                  itemCount: verses.length,
                ),
              )),
        ),
      ),
    );
  }

  loadSuraFiles(int suraIndex) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${suraIndex + 1}.txt");
    List<String> suraLines = fileContent.split("\n");
    verses = suraLines;
    setState(() {});
    print(fileContent);
  }
}
