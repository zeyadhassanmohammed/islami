import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:islami/views/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami/views/tabs/quran_tab/quran_tab.dart';
import 'package:islami/views/tabs/radio_tab/radio_tab.dart';
import 'package:islami/views/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami/views/tabs/settings_tab/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  static const String routeName = "homeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(themeProvider.mode == ThemeMode.light
                  ? "assets/images/main_bg.png"
                  : "assets/images/main_bg_dark.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text(
            "اسلامي",
          ),
        ),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadeth_icn.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              ),
            ]),
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
