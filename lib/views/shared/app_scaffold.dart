import 'package:dog_walking_app_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import 'app_back_button.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  const AppScaffold({
    Key? key,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteShade1,
      appBar: AppBar(
        backgroundColor: AppColors.whiteShade1,
        elevation: 0,
        leading: const AppBackButton(),
      ),
      body: body,
    );
  }
}
