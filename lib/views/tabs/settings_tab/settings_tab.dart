import 'package:flutter/material.dart';
import 'package:islami/color_palette.dart';
import 'package:islami/views/tabs/settings_tab/bottom_sheets/theme_bottom_sheet.dart';

import 'bottom_sheets/language_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Theme",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                 showModalBottomSheet(context: context,isScrollControlled: true, builder: (context) {
                   return ThemeBottomSheet();
                 },);

              },
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: primaryLightColor,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Light",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )),
            ),
          ),
          Text(
            "Language",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap:() {
                showModalBottomSheet(isScrollControlled: true,context: context, builder: (context) {
                  return languageBottomSheet();
                },);
              } ,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: primaryLightColor,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Arabic",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
