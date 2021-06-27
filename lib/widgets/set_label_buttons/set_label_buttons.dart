import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final String secondLabel;
  final VoidCallback primaryOnPressed;
  final VoidCallback secondOnPressed;
  final bool enabledPrimaryColor;

  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.secondLabel,
    required this.primaryOnPressed,
    required this.secondOnPressed,
    this.enabledPrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        child: Row(
          children: [
            Expanded(child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
              style: enabledPrimaryColor ? TextStyles.buttonPrimary : null,
              )),
            DividerVerticalWidget(),
            Expanded(child: LabelButton( label: secondLabel, onPressed: secondOnPressed )),
          ],),
      );
  }
}