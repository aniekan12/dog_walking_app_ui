import 'package:dog_walking_app_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTextStyles {
  static TextStyle heading1 = const TextStyle(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle heading4 = const TextStyle(
    color: AppColors.white,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle heading1Black = const TextStyle(
    color: AppColors.primary,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle heading3Black = const TextStyle(
    color: AppColors.primary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyText1 = const TextStyle(
    color: AppColors.white,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyText2 = const TextStyle(
    color: AppColors.primary,
    decoration: TextDecoration.underline,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  static TextStyle orangeText = const TextStyle(
    color: AppColors.orange,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle subText1 = const TextStyle(
    color: AppColors.blackShade2,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
