import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/user/Medications/appBar/AppBars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewMedicine extends StatefulWidget {
  AddNewMedicine({Key? key}) : super(key: key);

  @override
  State<AddNewMedicine> createState() => _AddNewMedicineState();
}

class _AddNewMedicineState extends State<AddNewMedicine> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: white,
            appBar: AppBars('Add New', false, 93, true, 85),
            body: ListView(
              padding: EdgeInsets.only(bottom: 50.h),
              children: [
                Container(
                    height: 210.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: white,
                      gradient: LinearGradient(
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter,
                          colors: [white, HexColor('#E2F6E5')]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20.h, right: 20.w, left: 20.w),
                            height: 25.h,
                            width: 25.w,
                            child: Center(
                                child: Icon(Icons.edit_note_sharp,
                                    size: 30, color: mainColor)),
                          ),
                        ),
                        Center(
                            child: Image.asset('assets/images/strepsils.png')),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.all(17.w),
                  child: Column(children: [
                    SizedBox(height: 20.h, width: 20.w),
                    TextField(
                      keyboardType: TextInputType.name,
                      // controller: myController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Product Name"),
                    ),
                    SizedBox(height: 10.h, width: 10.w),
                    TextField(
                      keyboardType: TextInputType.number,
                      //  controller: myController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "price"),
                    ),
                    SizedBox(height: 10.h, width: 10.w),
                    TextField(
                      keyboardType: TextInputType.text,
                      //  controller: myController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Availability"),
                    ),
                    SizedBox(height: 10.h, width: 10.w),
                    TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Description"),
                    ),
                    SizedBox(height: 10.h, width: 10.w),
                    TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "How to use"),
                    ),
                    SizedBox(height: 20.h, width: 20.w),
                    RaisedButton.icon(
                      onPressed: () {
                        //  Get.to(() =>  AddNewMedicine());
                        //     // Navigator.push(
                        //     //     context,
                        //     //     MaterialPageRoute(builder: (context) =>  AddNewMedicine()),
                        //     //   );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      label: Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      textColor: Color.fromRGBO(255, 255, 255, 1),
                      splashColor: green,
                      color: mainColor,
                    ),
                  ]),
                )
              ],
            )));
  }
}
