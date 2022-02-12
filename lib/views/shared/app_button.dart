import 'package:dog_walking_app_ui/utils/constants/colors.dart';
import 'package:dog_walking_app_ui/utils/styles/styles.dart';
import 'package:flutter/material.dart';

class OrangeGradientButton extends StatelessWidget {
  final String? buttonText;
  final List<Color>? color;
  final VoidCallback? pressed;
  const OrangeGradientButton(
      {Key? key, this.buttonText, this.color, this.pressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 9),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(255, 144, 75, 1),
              Color.fromRGBO(251, 114, 76, 1),
            ]),
          ),
          height: MediaQuery.of(context).size.height / 12,
          width: MediaQuery.of(context).size.width / 1.2,
          child: MaterialButton(
            onPressed: pressed,
            child: Text(
              buttonText!,
              style: AppTextStyles.heading1,
            ),
          )),
    );
  }
}

class AppTextButton extends StatelessWidget {
  final VoidCallback? pressed;
  final String? buttonText;
  const AppTextButton({Key? key, this.pressed, this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: pressed,
        child: Text(buttonText!, style: AppTextStyles.orangeText));
  }
}
