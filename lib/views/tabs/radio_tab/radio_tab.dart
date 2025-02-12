import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/color_palette.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider= Provider.of<ThemeProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset("assets/images/radio_image.png"),
        Text(
          "quran_radio".tr(),
          style: Theme.of(context).textTheme.titleMedium
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: context.locale==Locale("en")? Icon(Icons.skip_previous):Icon(Icons.skip_next),
              color:themeProvider.mode==ThemeMode.light? primaryLightColor :primaryDarkColor,
              iconSize: 50,
              onPressed: () {
                // Handle previous action
              },
            ),
            IconButton(
              icon: const Icon(Icons.play_arrow),
              color:themeProvider.mode==ThemeMode.light? primaryLightColor :primaryDarkColor,
              iconSize: 60,
              onPressed: () {
                // Handle play action
              },
            ),
            IconButton(
              icon: context.locale==Locale("ar")? Icon(Icons.skip_previous):Icon(Icons.skip_next),
              color:themeProvider.mode==ThemeMode.light? primaryLightColor :primaryDarkColor,
              iconSize: 50,
              onPressed: () {
                // Handle next action
              },
            ),
          ],
        ),
      ],
    );
  }
}
