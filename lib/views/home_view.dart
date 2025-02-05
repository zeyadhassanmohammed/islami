import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/views/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami/views/tabs/quran_tab/quran_tab.dart';
import 'package:islami/views/tabs/radio_tab/radio_tab.dart';
import 'package:islami/views/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami/views/tabs/settings_tab.dart';

class HomeView extends StatefulWidget {
  @override
  static const String routeName = "homeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
    int selectedIndex = 0;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "اسلامي",
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),

        body: tabs[selectedIndex],


        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {

              });
            },
            type: BottomNavigationBarType.shifting,
            elevation: 0,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),
                  label: "",backgroundColor: Color(0xFFB7935F),),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadeth_icn.png")),
                  label: "",backgroundColor: Color(0xFFB7935F)),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),
                  label: "",backgroundColor: Color(0xFFB7935F)),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),
                  label: "",backgroundColor: Color(0xFFB7935F)),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "",backgroundColor: Color(0xFFB7935F)),
            ]),
      ),
    );
  }
  List<Widget>tabs=[
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
