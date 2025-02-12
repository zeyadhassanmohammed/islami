import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/color_palette.dart';

class languageBottomSheet extends StatelessWidget {
  const languageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          InkWell(
            onTap: () {
              context.setLocale(Locale("ar"));
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "العربيه",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color:  context.locale == Locale("ar")
                      ? primaryLightColor
                      : blackColor,),
                ),
                context.locale == Locale("ar")
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
              context.setLocale(Locale("en"));
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "english",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: context.locale == Locale("en")
                          ? primaryLightColor
                          : blackColor),
                ),
                context.locale == Locale("en")
                    ? Icon(
                        Icons.done,
                        color: primaryLightColor,
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
