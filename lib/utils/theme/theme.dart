import 'package:flutter/material.dart';
import 'package:flutter_freiwillig_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_freiwillig_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_freiwillig_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_freiwillig_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_freiwillig_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_freiwillig_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_freiwillig_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_freiwillig_app/utils/theme/custom_themes/text_theme.dart';

class CAppTheme {
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CTextTheme.lightTextTheme,
    chipTheme: CChipTheme.lightChipTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
    checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.lightInpputDecorationTheme,
  );

  /// ---- dark
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CTextTheme.darkTextTheme,
    chipTheme: CChipTheme.darkChipTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: CAppBarTheme.darkAppBarTheme,
    checkboxTheme: CCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.darkInpputDecorationTheme,
  );
}
