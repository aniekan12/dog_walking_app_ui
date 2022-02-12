import 'package:dog_walking_app_ui/helpers/ui_helper.dart';
import 'package:dog_walking_app_ui/utils/constants/colors.dart';
import 'package:dog_walking_app_ui/utils/constants/image_assets.dart';
import 'package:dog_walking_app_ui/utils/styles/styles.dart';
import 'package:dog_walking_app_ui/views/shared/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 10, right: 9),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              firstSection(),
              UIHelper.verticalSpaceTiny,
              Text('Explore dog walkers', style: AppTextStyles.subText1),
              UIHelper.verticalSpaceRegular,
              searchTextField(context),
              UIHelper.verticalSpaceRegular,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Near you', style: AppTextStyles.heading1Black),
                  TextButton(
                      onPressed: () {},
                      child: Text('View all', style: AppTextStyles.bodyText2))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

//textfield for searching
  Widget searchTextField(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height / 15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColors.white),
        child: const Padding(
          padding: EdgeInsets.only(top: 6),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(IconlyLight.location),
                hintText: 'Kiyv, Ukraine',
                border: InputBorder.none,
                suffixIcon: Icon(IconlyLight.filter)),
          ),
        ),
      );

  Widget firstSection() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Home', style: AppTextStyles.heading1Black),
          SmallOrangeGradientButton(
            buttonText: 'Book a walk',
            pressed: () {},
          )
        ],
      );
}
