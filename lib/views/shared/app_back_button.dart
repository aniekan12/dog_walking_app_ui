//back button
import 'package:dog_walking_app_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back, size: 18, color: AppColors.primary),
      onPressed: () => Get.back(),
    );
  }
}
