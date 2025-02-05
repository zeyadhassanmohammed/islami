import 'package:flutter/material.dart';
import 'package:islami/views/tabs/hadeth_tab/hadeth_details.dart';
import 'package:islami/views/tabs/quran_tab/sura_details.dart';

import 'views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.routeName,
      routes: {HomeView.routeName: (context) => HomeView(),
      SuraDetails.routeName:(context)=>SuraDetails(),
      HadethDetails.routeName:(context)=>HadethDetails()
      },
    );
  }
}
