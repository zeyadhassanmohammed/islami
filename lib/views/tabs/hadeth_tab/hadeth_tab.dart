import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/views/tabs/hadeth_tab/hadeth_details.dart';

import 'hadeth_model.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Center(
            child: Image.asset(
          "assets/images/hadeth_header.png",
          height: 190,
          width: 300,
        )),
        Divider(),
        Text(
          "الأحاديث",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                        arguments: allAhadeth[index]);
                  },
                  child: Center(
                      child: Text(
                    "${allAhadeth[index].title}",
                    style: Theme.of(context).textTheme.labelMedium,
                  )));
            },
            itemCount: allAhadeth.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                thickness: 1,
                indent: 50,
                endIndent: 50,
              );
            },
          ),
        )
      ],
    );
  }

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
    setState(() {});
  }
}
