import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta/custom_Grid.dart';
import 'package:tanta/presentation/Custom%20widgets/customContainer.dart';

class addItem2 extends StatefulWidget {
  const addItem2({super.key});

  @override
  State<addItem2> createState() => _addItem1State();
}

class _addItem1State extends State<addItem2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.keyboard_arrow_right,
              size: 40,
              color: Colors.black,
            ),
          )
        ],
        title: Center(
            child: Text(
          "إضافة عنصر",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        )),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              child: Column(
                children: [
                  custom_container(title: " T مسطرة حرف "),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: custom_container(title: '''  ٦ أشهر''')),
                      Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: custom_container(title: "250")),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  custom_container(title: '''
        
         لطلبة الهندسة T مسطرة حرف
        
        '''),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: imageGrid(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  custom_container(title: "أدوات"),
                  custom_container(title: "هندسة"),
                  custom_container(title: "طنطا"),
                  custom_container(title: "أخري"),
                  custom_container(title: "إعدادي"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "التالي",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
