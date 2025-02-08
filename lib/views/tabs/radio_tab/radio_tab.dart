import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/color_palette.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset("assets/images/radio_image.png"),
        Text(
          "إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.titleMedium
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.skip_previous),
              color: primaryLightColor,
              iconSize: 50,
              onPressed: () {
                // Handle previous action
              },
            ),
            IconButton(
              icon: const Icon(Icons.play_arrow),
              color: primaryLightColor,
              iconSize: 60,
              onPressed: () {
                // Handle play action
              },
            ),
            IconButton(
              icon: const Icon(Icons.skip_next),
              color: primaryLightColor,
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
