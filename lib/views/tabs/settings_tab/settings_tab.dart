import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/color_palette.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:islami/views/tabs/settings_tab/bottom_sheets/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'bottom_sheets/language_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider=Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
           "theme".tr(),
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
                      themeProvider.mode==ThemeMode.light? "light".tr():"dark".tr(),
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )),
            ),
          ),
          Text(
            "language".tr(),
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
                    context.locale==Locale("ar")?  "arabic".tr():"english".tr(),
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
