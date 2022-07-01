import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/pharmacey/Inventory/Medicines/PharmMedicineDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class PharmMedicinesCard extends StatefulWidget {
  PharmMedicinesCard({Key? key}) : super(key: key);

  @override
  State<PharmMedicinesCard> createState() => _PharmMedicinesCardState();
}

class _PharmMedicinesCardState extends State<PharmMedicinesCard> {
   bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
   return Container(
     height: 130.h,
    child: Card(
      elevation: 2,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
         Padding(padding: EdgeInsets.all(10.0),
         child: GestureDetector(
           onTap: (){
           Get.to(() => const PharmMedicationsDetails());

           },
           child: Container(
             width: 60,
             height: 60,
             margin: EdgeInsets.only(left: 10),
            decoration: const BoxDecoration(
            
              
              image: DecorationImage(
                image: AssetImage('assets/images/med.png'),
                fit: BoxFit.cover
              ),
      
            ),
             ),

         ),
         
         ),
         Padding(
           padding:EdgeInsets.all(10) ,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           Text("Strespsils", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
           Text("medication".tr, style: TextStyle(color: grey),),
           Text("50 ${'items'.tr}", style: TextStyle(color: grey),)
        
           ],
         )
         ),
         Padding(padding: EdgeInsets.all(10),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             FlutterSwitch(
                      height: 20.0,
                      width: 40.0,
                      padding: 4.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      activeColor: mainColor,
                      value: _switchValue,
                      onToggle: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Text("edit".tr, style: TextStyle(color: mainColor),),
                       SizedBox(width: 5.w,),
                       Icon(Icons.edit_note_sharp, color: mainColor,)
                      ],
                    )
           ],
         ),
         )
        ],
      ),

    ),
    );
  }
}