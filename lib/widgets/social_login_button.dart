import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';

class SocialLoginButton extends StatelessWidget {
  final String textbutton;
  final VoidCallback onTap;
  const SocialLoginButton({
    Key? key,
    required this.textbutton,
    required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.shape,
          border: Border.fromBorderSide(BorderSide(color: AppColors.stroke)),
        ),
        child: Row(
          children: [
            Expanded( flex: 1, child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.google),
                SizedBox(
                  width: 16,
                ),
                Container(
                  height: 56, width: 1,
                  color: AppColors.stroke,
                ),
              ],),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textbutton,
                    style: TextStyles.buttonGray
                  ),
                ],
              ),
            ),
        ],),
      ),
    );
  }
}