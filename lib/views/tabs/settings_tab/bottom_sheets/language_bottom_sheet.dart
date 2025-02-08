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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Arabic",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: primaryLightColor),
              ),
              Icon(
                Icons.done,
                color: primaryLightColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "English",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Icon(Icons.done),
            ],
          ),
        ],
      ),
    );
  }
}
