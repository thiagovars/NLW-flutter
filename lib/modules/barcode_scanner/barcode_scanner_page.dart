import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/widgets/label_button/label_button.dart';

class BarcodeScannerPage extends StatefulWidget {
  BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Scan para código de barras",
          style: TextStyles.buttonBackground
        ),
        leading: BackButton(
          color: AppColors.background,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 56,
        child: Row(
          children: [
            Expanded(child: LabelButton( label: "Inserir Código do Boleto", onPressed: () {},)),
            DividerVerticalWidget(),
            Expanded(child: LabelButton( label: "Adicionar da galeria", onPressed: () {}, )),
          ],),
      ),
    );
  }
}