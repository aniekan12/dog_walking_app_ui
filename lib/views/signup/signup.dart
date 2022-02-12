import 'package:dog_walking_app_ui/helpers/ui_helper.dart';
import 'package:dog_walking_app_ui/utils/constants/colors.dart';
import 'package:dog_walking_app_ui/utils/constants/constants.dart';
import 'package:dog_walking_app_ui/utils/styles/styles.dart';
import 'package:dog_walking_app_ui/views/shared/app_button.dart';
import 'package:dog_walking_app_ui/views/shared/app_scaffold.dart';
import 'package:dog_walking_app_ui/views/shared/app_textfield.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 23.0, right: 23.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(startHere, style: AppTextStyles.heading1Black),
            UIHelper.verticalSpaceSmall,
            Text(fillIn, style: AppTextStyles.subText1),
            UIHelper.verticalSpaceRegular,
            const AppTextField(
              hinttext: 'Cristian',
              labelText: 'Fullname',
            ),
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
              buttonText: 'Sign Up',
              pressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
