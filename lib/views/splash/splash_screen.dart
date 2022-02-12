import 'package:dog_walking_app_ui/helpers/ui_helper.dart';
import 'package:dog_walking_app_ui/utils/constants/constants.dart';
import 'package:dog_walking_app_ui/utils/constants/image_assets.dart';
import 'package:dog_walking_app_ui/utils/size_config/size_config.dart';
import 'package:dog_walking_app_ui/utils/styles/styles.dart';
import 'package:dog_walking_app_ui/views/shared/app_button.dart';
import 'package:dog_walking_app_ui/views/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: topWidget(context),
        ),
      ),
    );
  }

//start of the screen
  Widget topWidget(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(onBoardingPic),
            Positioned(left: 10, child: Image.asset(logo)),
            Positioned(left: 25, bottom: 30, child: Image.asset(numbering)),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(32, 32, 32, 1),
              Color.fromRGBO(32, 32, 32, 1),
              Color.fromRGBO(32, 32, 32, 1),
              Color.fromRGBO(32, 32, 32, 1),
              Color.fromRGBO(32, 32, 32, 1),
            ]),
          ),
          child: bottomWidget(),
        )
      ],
    );
  }

  //bottom widget
  Widget bottomWidget() {
    return Column(
      children: [
        Center(child: Text(tooTired, style: AppTextStyles.heading1)),
        Center(child: Text(letsHelp, style: AppTextStyles.heading1)),
        UIHelper.verticalSpaceSmall,
        OrangeGradientButton(
          buttonText: joinOur,
          pressed: () => Get.to(const SignUpView()),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(alreadyMember, style: AppTextStyles.bodyText1),
            AppTextButton(
              buttonText: signIn,
              pressed: () {},
            )
          ],
        ),
      ],
    );
  }
}
