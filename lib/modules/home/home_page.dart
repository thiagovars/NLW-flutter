import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_controller.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    Container(color: AppColors.primary,),
    Container(color: Colors.black54,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(text: "Olá, ", style: TextStyles.titleRegularShape,
                  children: [
                    TextSpan(text: "Thiago", style: TextStyles.titleBoldShape),
                  ]),
              ),
              subtitle: Text(
                "Mantenha seus boletos em dia",
                style: TextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(//BUTTON TO NAVIGATE - HOME
              onPressed: () {
                controller.setPage(0);
                setState(() {});
                print(pages[controller.currentPage]);
              },
              icon: Icon(Icons.home),
              color: AppColors.primary,
            ),
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(5)
              ),
              child: IconButton(//BUTTON TO NAVIGATE - ADD BOLETO
                onPressed: () {
                  Navigator.pushNamed(context, '/barcode_scanner');
                },
                icon: Icon(
                Icons.add_box_outlined,
                color: AppColors.background,
                ),
              ),
            ),
            IconButton(//BUTTON TO NAVIGATE - DESCRIPTION
              onPressed: () {
                controller.setPage(1);
                print(pages[controller.currentPage]);
                setState(() {});
              },
              icon: Icon(Icons.description_outlined),
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}