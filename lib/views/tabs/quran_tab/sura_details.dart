import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/providers/sura_details_provider.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:islami/views/tabs/quran_tab/quran_model.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "SuraDetails";
  SuraDetails({super.key});
  @override
  Widget build(BuildContext context) {
    var quranModel = ModalRoute.of(context)?.settings.arguments as QuranModel;
   var themeProvider=Provider.of<ThemeProvider>(context);

    return ChangeNotifierProvider(
      create: (BuildContext context) =>
          SuraDetailsProvider()..loadSuraFiles(quranModel.suraIndex),
      builder: (context, child) {
        var suraProvider = Provider.of<SuraDetailsProvider>(context);
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(themeProvider.mode==ThemeMode.light?"assets/images/main_bg.png":"assets/images/main_bg_dark.png"),
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
                      "${suraProvider.verses[index]} (${index + 1}) ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                      textDirection: TextDirection.rtl,
                    );
                  },
                  itemCount: suraProvider.verses.length,
                ),
              )),
            ),
          ),
        );
      },
    );
  }
}
