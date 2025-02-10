import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SuraDetailsProvider extends ChangeNotifier{
  List<String>verses=[];
  loadSuraFiles(int suraIndex) async {
    String fileContent =
    await rootBundle.loadString("assets/files/${suraIndex + 1}.txt");
    List<String> suraLines = fileContent.split("\n");
    verses = suraLines;
      print(fileContent);

notifyListeners();
  }
}