import 'package:dog_walking_app_ui/helpers/ui_helper.dart';
import 'package:dog_walking_app_ui/utils/constants/constants.dart';
import 'package:dog_walking_app_ui/utils/styles/styles.dart';
import 'package:dog_walking_app_ui/views/home/home_view.dart';
import 'package:dog_walking_app_ui/views/shared/app_button.dart';
import 'package:dog_walking_app_ui/views/shared/app_scaffold.dart';
import 'package:dog_walking_app_ui/views/shared/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 23.0, right: 23.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(welcome, style: AppTextStyles.heading1Black),
            UIHelper.verticalSpaceSmall,
            Text(fillInLogin, style: AppTextStyles.subText1),
            UIHelper.verticalSpaceRegular,
            const AppTextField(
              hinttext: 'ani@gmail.com',
              labelText: 'E-mail',
            ),
            UIHelper.verticalSpaceRegular,
            AppPasswordField(
              hinttext: '********',
              labelText: 'Password',
            ),
            UIHelper.verticalSpaceRegular,
            OrangeGradientButton(
              buttonText: 'Login',
              pressed: () => Get.to(() => const HomeView()),
            ),
          ],
        ),
      ),
    );
  }
}
