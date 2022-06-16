import 'package:badges/badges.dart';
import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../PastOrder/pastOrders.dart';
import 'AllOrdersCard.dart';

class DrugDelieveryscr extends StatefulWidget {
  DrugDelieveryscr({Key? key}) : super(key: key);

  @override
  _DrugDelieveryscrState createState() => _DrugDelieveryscrState();
}

class _DrugDelieveryscrState extends State<DrugDelieveryscr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(98.h),
          child: Container(
            height: 98.h,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                border: Border.all(color: grey2),
                color: mainColor),
            child: Padding(
              padding: EdgeInsets.only(
                // top: 60.h,
                right: 15.w,
                left: 15.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Drug Delivery',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: poppins,
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Badge(
                    badgeColor: orange,
                    elevation: 0,
                    position: BadgePosition(
                      top: 2.h,
                      start: 2.w,
                    ),
                    child: Icon(
                      Icons.notifications_rounded,
                      color: white,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  Get.to(() => PastOrders());
                },
                child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.w,
                      right: 8.w,
                    ),
                    child: AllOederCard()));
          },
        ),
      ),
    );
  }
}
