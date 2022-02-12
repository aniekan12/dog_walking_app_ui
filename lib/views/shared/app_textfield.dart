import 'package:dog_walking_app_ui/utils/constants/colors.dart';
import 'package:dog_walking_app_ui/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AppTextField extends StatelessWidget {
  final String? labelText;
  final String? hinttext;
  final String Function(String)? validator;
  const AppTextField({
    Key? key,
    required this.labelText,
    required this.hinttext,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: labelText,
            labelStyle: AppTextStyles.subText1,
            hintStyle: AppTextStyles.heading3Black,
            hintText: hinttext,
          ),
        ),
      ),
    );
  }
}

class AppPasswordField extends StatefulWidget {
  final String? labelText;
  final String Function(String)? validator;
  final String? hinttext;
  const AppPasswordField(
      {Key? key, this.labelText, this.hinttext, this.validator})
      : super(key: key);

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool _isPasswordVisible = false;
  @override
  void initState() {
    //_isPasswordVisible = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          obscureText: _isPasswordVisible,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: _isPasswordVisible
                    ? const Icon(IconlyLight.hide, color: AppColors.primary)
                    : const Icon(IconlyLight.show, color: AppColors.primary)),
            border: InputBorder.none,
            labelText: widget.labelText,
            labelStyle: AppTextStyles.subText1,
            hintStyle: AppTextStyles.heading3Black,
            hintText: widget.hinttext,
          ),
        ),
      ),
    );
  }
}
