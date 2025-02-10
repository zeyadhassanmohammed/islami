import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:islami/views/tabs/hadeth_tab/hadeth_details.dart';
import 'package:islami/views/tabs/quran_tab/sura_details.dart';
import 'package:provider/provider.dart';

import 'views/home_view.dart';

void main() {
  runApp(
     ChangeNotifierProvider(
        create: (BuildContext context) => ThemeProvider(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      themeMode: themeProvider.mode,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.routeName,
      routes: {
        HomeView.routeName: (context) => HomeView(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails()
      },
    );
  }
}
