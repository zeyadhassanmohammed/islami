import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/providers/hadeth_provider.dart';
import 'package:islami/providers/sura_details_provider.dart';
import 'package:islami/views/tabs/hadeth_tab/hadeth_details.dart';
import 'package:provider/provider.dart';

import 'hadeth_model.dart';

class HadethTab extends StatelessWidget {
  HadethTab({super.key});
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (BuildContext context)=>HadethProvider()..loadHadethFile(),
      builder: (context, child) {
        var hadethProvider=Provider.of<HadethProvider>(context);
      return  Column(
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
                            arguments: hadethProvider.allAhadeth[index]);
                      },
                      child: Center(
                          child: Text(
                            "${hadethProvider.allAhadeth[index].title}",
                            style: Theme.of(context).textTheme.labelMedium,
                          )));
                },
                itemCount: hadethProvider.allAhadeth.length,
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
      },
    );
  }


}
