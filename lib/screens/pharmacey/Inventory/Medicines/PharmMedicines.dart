import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/pharmacey/Inventory/Medicines/AddNewMedicine.dart';
import 'package:drug_delivery_application/screens/pharmacey/Inventory/Medicines/PharmMedicineDetails.dart';
import 'package:drug_delivery_application/screens/pharmacey/Inventory/Medicines/PharmMedicinesCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PharmMedicines extends StatefulWidget {
  PharmMedicines({Key? key}) : super(key: key);

  @override
  State<PharmMedicines> createState() => _PharmMedicinesState();
}

class _PharmMedicinesState extends State<PharmMedicines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.only(bottom: 50.h), children: [
        Padding(
            padding: EdgeInsets.only(
                top: 35.h, left: 26.w, right: 26.w, bottom: 20.w),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'alldrugs'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: mainColor,
                          fontFamily: montserratBold,
                          fontWeight: FontWeight.w800),
                    ),
                  ]),
                  RaisedButton.icon(
                    onPressed: () {
                      Get.to(() => AddNewMedicine());
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) =>  AddNewMedicine()),
                      //   );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    label: Text(
                      'addnew'.tr,
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
                ])),
        Container(
          //  padding: EdgeInsets.only(top: 5.h),
          child: ListView.builder(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Get.to(() => PharmMedicationsDetails());
                  },
                  child: PharmMedicinesCard());
            },
          ),
        )
      ]),
    );
  }
}
