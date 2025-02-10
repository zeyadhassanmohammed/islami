import 'package:flutter/material.dart';
import 'package:islami/color_palette.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Light",
                  style: themeProvider.mode == ThemeMode.light
                      ? Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: primaryLightColor)
                      : Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: Colors.white),
                ),
                themeProvider.mode == ThemeMode.light
                    ? Icon(
                  Icons.done,
                  color: primaryLightColor,
                )
                    : SizedBox(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark",
                  style: themeProvider.mode == ThemeMode.dark
                      ? Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: primaryDarkColor)
                      : Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: blackColor),
                ),
                themeProvider.mode == ThemeMode.dark
                    ? Icon(
                  Icons.done,
                  color: primaryDarkColor,
                )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
