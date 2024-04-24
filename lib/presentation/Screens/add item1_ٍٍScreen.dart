import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta/custom_Grid.dart';
import 'package:tanta/presentation/Custom%20widgets/Custom_Text_Field.dart';
import 'package:tanta/presentation/Screens/add%20item2_Screen.dart';

class addItem1 extends StatefulWidget {
  const addItem1({super.key});

  @override
  State<addItem1> createState() => _addItem1State();
}

class _addItem1State extends State<addItem1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameOfItem = TextEditingController();
    TextEditingController price = TextEditingController();
    TextEditingController time = TextEditingController();
    TextEditingController unv = TextEditingController();
    TextEditingController coll = TextEditingController();
    TextEditingController part = TextEditingController();
    TextEditingController team = TextEditingController();
    TextEditingController script = TextEditingController();
    bool done = true;
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
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
        )),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: customTextInput(
                      controller: nameOfItem,
                      noLines: 1,
                      hintText: "إسم العنصر",
                      width_of_Tf: MediaQuery.of(context).size.width,
                      Value_of_radius: 10,
                      height_of_Tf: 30.h,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customTextInput(
                        controller: time,
                        noLines: 1,
                        hintText: "المدة",
                        width_of_Tf: MediaQuery.of(context).size.width / 2 - 30,
                        Value_of_radius: 7,
                        height_of_Tf: 30.h,
                      ),
                      customTextInput(
                        controller: price,
                        ed: done,
                        noLines: 1,
                        hintText: " السعر",
                        width_of_Tf: MediaQuery.of(context).size.width / 2 - 30,
                        Value_of_radius: 7,
                        height_of_Tf: 30.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  customTextInput(
                    controller: script,
                    noLines: 3,
                    hintText: " الوصف",
                    width_of_Tf: MediaQuery.of(context).size.width - 10,
                    Value_of_radius: 10,
                    height_of_Tf: 50.h,
                  ),
                  customGrid(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Color.fromARGB(255, 240, 238, 238))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 45,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                " القسم",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black54),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  customTextInput(
                    controller: coll,
                    noLines: 1,
                    hintText: " الكلية المقصودة",
                    width_of_Tf: MediaQuery.of(context).size.width - 10,
                    Value_of_radius: 10,
                    height_of_Tf: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  customTextInput(
                    noLines: 1,
                    controller: unv,
                    hintText: " الجامعة المقصودة",
                    width_of_Tf: MediaQuery.of(context).size.width - 10,
                    Value_of_radius: 10,
                    height_of_Tf: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  customTextInput(
                    controller: part,
                    noLines: 1,
                    hintText: "القسم المستفيد",
                    width_of_Tf: MediaQuery.of(context).size.width - 10,
                    Value_of_radius: 10,
                    height_of_Tf: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  customTextInput(
                    controller: team,
                    noLines: 1,
                    hintText: " الفرقة",
                    width_of_Tf: MediaQuery.of(context).size.width - 10,
                    Value_of_radius: 10,
                    height_of_Tf: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 129, 129, 129),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => addItem2(),
                          ));
                        },
                        child: Text(
                          "التالي",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
