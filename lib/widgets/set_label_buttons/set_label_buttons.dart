import 'package:flutter/material.dart';
import 'package:payflow/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  const SetLabelButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        child: Row(
          children: [
            Expanded(child: LabelButton( label: "Inserir Código do Boleto", onPressed: () {},)),
            DividerVerticalWidget(),
            Expanded(child: LabelButton( label: "Adicionar da galeria", onPressed: () {}, )),
          ],),
      );
  }
}