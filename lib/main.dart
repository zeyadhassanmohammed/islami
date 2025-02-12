import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:islami/views/tabs/hadeth_tab/hadeth_details.dart';
import 'package:islami/views/tabs/quran_tab/sura_details.dart';
import 'package:provider/provider.dart';

import 'views/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
        create: (BuildContext context) => ThemeProvider(),
        child: EasyLocalization(
            supportedLocales: [Locale("en"), Locale("ar")],
            saveLocale: true,
            path: 'assets/translations',
            child: MyApp())),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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
