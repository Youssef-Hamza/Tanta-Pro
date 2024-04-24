import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanta/addData2_Screen.dart';
import 'package:tanta/custom_Grid.dart';
import 'package:tanta/presentation/Custom%20widgets/Custom_Text_Field.dart';

class addData3 extends StatefulWidget {
  const addData3({super.key});

  @override
  State<addData3> createState() => _addItem1State();
}

class _addItem1State extends State<addData3> {
  @override
  Widget build(BuildContext context) {
    TextEditingController Fname = TextEditingController();
    TextEditingController Lname = TextEditingController();
    TextEditingController unv = TextEditingController();
    TextEditingController coll = TextEditingController();
    TextEditingController no = TextEditingController();
    TextEditingController team = TextEditingController();
    TextEditingController city = TextEditingController();
    TextEditingController phoneN = TextEditingController();
    TextEditingController gevo = TextEditingController();

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
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
        )),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customTextInput(
                        controller: Lname,
                        noLines: 1,
                        hintText: "العائلة",
                        width_of_Tf: MediaQuery.of(context).size.width / 2 - 30,
                        Value_of_radius: 7,
                        height_of_Tf: 30.h,
                      ),
                      customTextInput(
                        controller: Fname,
                        noLines: 1,
                        hintText: " الأسم",
                        width_of_Tf: MediaQuery.of(context).size.width / 2 - 30,
                        Value_of_radius: 7,
                        height_of_Tf: 30.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: customTextInput(
                      controller: unv,
                      noLines: 1,
                      hintText: " كلية",
                      width_of_Tf: double.infinity,
                      Value_of_radius: 7,
                      height_of_Tf: 30.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: customTextInput(
                      controller: coll,
                      noLines: 1,
                      hintText: " جامعة",
                      width_of_Tf: double.infinity,
                      Value_of_radius: 7,
                      height_of_Tf: 30.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: customTextInput(
                      controller: team,
                      noLines: 1,
                      hintText: " الفرقة",
                      width_of_Tf: double.infinity,
                      Value_of_radius: 7,
                      height_of_Tf: 30.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: customTextInput(
                      noLines: 1,
                      controller: no,
                      hintText: " الرقم القومي  ",
                      width_of_Tf: double.infinity,
                      Value_of_radius: 7,
                      height_of_Tf: 30.h,
                    ),
                  ),
                  customGrid(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Color.fromARGB(255, 240, 238, 238))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Icon(
                              Icons.arrow_drop_down,
                              size: 45,
                              color: Colors.grey,
                            ),
                            Text(
                              "02",
                              style: TextStyle(fontSize: 15),
                            ),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: customTextInput(
                          noLines: 1,
                          controller: phoneN,
                          hintText: "  رقم الهاتف",
                          width_of_Tf: 250.w,
                          Value_of_radius: 7,
                          height_of_Tf: 50,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: customTextInput(
                      controller: coll,
                      noLines: 1,
                      hintText: "الإيميل",
                      width_of_Tf: double.infinity.w,
                      Value_of_radius: 7,
                      height_of_Tf: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: customTextInput(
                      controller: gevo,
                      noLines: 1,
                      hintText: "  المحافظة",
                      width_of_Tf: double.infinity.w,
                      Value_of_radius: 7,
                      height_of_Tf: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: customTextInput(
                      controller: city,
                      noLines: 1,
                      hintText: " المدينة",
                      width_of_Tf: double.infinity.w,
                      Value_of_radius: 7,
                      height_of_Tf: 50,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 50.h,
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
                            builder: (context) => addData2(),
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
            )
          ],
        ),
      ),
    );
  }
}
