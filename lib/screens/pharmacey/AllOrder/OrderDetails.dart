
import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/user/Medications/appBar/AppBars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Inventory/Medicines/PharmMedicineDetails.dart';
import 'OrderDetailsCard.dart';

class OrderDetailsPage extends StatefulWidget {
  OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: white,
        appBar: AppBars("orderdetails".tr, false, 75, true, 70),
        body: ListView(
          padding: const EdgeInsets.all(20),
            children: <Widget>[ 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Container(
                    width: 145.w,
                    height: 26.h,
                 alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: lightgreen,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                 child: Text(
                        'neworderrequest'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13.sp,
                          
                          fontFamily: montserratBold,
                          color: mainColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                   ),
                    Text(
                    "${'order'.tr} #4444",
                    style: TextStyle(
                      fontWeight:FontWeight.w700,

                    ),)
                ],
              ),
              Container(
            height: 1.h,
            margin: EdgeInsets.only(top: 23.h, bottom: 10),
            width: double.infinity,
            color: HexColor('#CECECE'),
          ),

          Container (  
          child:ListView.builder(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Get.to(() => PharmMedicationsDetails());
                      },
                      child: OrderDetailsCard()
                    );
                },
              ),
          ),
          SizedBox(height: 15.h, width: 15.w,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("checkouttotal".tr, style: TextStyle(fontWeight: FontWeight.bold),),
             Text("10₪" , style: TextStyle(fontSize: 15),),
            ],
          ),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
               margin: EdgeInsets.only(bottom: 20, top: 10),
                child: FlatButton(
                  onPressed: () {  },
                  height: 50.h,
                  minWidth: 50.w,
                  child: Text("acceptall".tr, style: TextStyle(fontSize: 15.sp, color: white),
              
                ),
                color: mainColor,
              )
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: FlatButton
                (onPressed: (){}, 
                 height: 50.h,
                 focusColor: green,
                child: Text("rejectorder".tr, style: TextStyle(fontSize: 15.sp, color: mainColor),),
                color: white ,
                ),
              )
            ],
           )
              
  
              
            ],
        
        ),
    
    );
  }
}