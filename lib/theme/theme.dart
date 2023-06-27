//! ALAS! LET THE THEMING BEGIN!
import 'package:flutter/material.dart';
import 'package:world_space/shared/app_elements/app_colours.dart';

class AppTheme {
  //! APP THEME - LIGHT
  static ThemeData get appThemeLight => ThemeData(
        //! HOW PAGES TRANSITION BETWEEN EACH OTHER
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          for (final platform in TargetPlatform.values)
            platform: const OpenUpwardsPageTransitionsBuilder()
        }),

        //! ENSURING THAT THE DENSITY OF ELEMENTS ACROSS THE APP, MATCHES THE PLATFORM
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,

        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: "Mohave Regular",
            fontWeight: FontWeight.w700,
            fontSize: 38.0,
            color: AppColours.textHeaderColour,
          ),
          bodyMedium: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            color: AppColours.textBodyColour,
            fontSize: 16.0,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      );
}
