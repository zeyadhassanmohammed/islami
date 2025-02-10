import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../views/tabs/hadeth_tab/hadeth_model.dart';

class HadethProvider extends ChangeNotifier{
  List<HadethModel>allAhadeth=[];
  loadHadethFile() async {
    String ahadethFile =
    await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = ahadethFile.split("#");

    for (int i = 0; i < ahadeth.length; i++) {
      String hadethOne = ahadeth[i];
      List<String> hadethLines = hadethOne.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> content = hadethLines;
      HadethModel hadethModel = HadethModel(title, content);
      allAhadeth.add(hadethModel);

      print(title);
    }
    notifyListeners();
  }
}