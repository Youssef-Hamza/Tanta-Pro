import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tanta/presentation/Custom%20widgets/customContainer.dart';
import 'package:tanta/presentation/Custom%20widgets/custom_Grid.dart';

class addData2 extends StatefulWidget {
  const addData2({super.key});

  @override
  State<addData2> createState() => _addItem1State();
}

class _addItem1State extends State<addData2> {
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
          "إضافة بيانات",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        )),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 150.w, child: custom_container(title: "أشرف")),
                      Container(
                          width: 150.w, child: custom_container(title: "أدهم")),
                    ],
                  ),
                  custom_container(title: "حاسبات ومعلومات"),
                  custom_container(title: "طنطا"),
                  custom_container(title: "الرابعة"),
                  custom_container(title: "303066605464"),
                  imageGrid2(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Color.fromARGB(255, 240, 238, 238))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                              color: Colors.grey,
                            ),
                            Text(
                              "+ 02",
                              style: TextStyle(fontSize: 15),
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          width: 270.w,
                          child: custom_container(title: "1015565454")),
                    ],
                  ),
                  custom_container(title: "adham22@gamil.com"),
                  custom_container(title: "الغربية"),
                  custom_container(title: "طنطا"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
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
