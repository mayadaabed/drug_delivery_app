import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Medications/appBar/AppBars.dart';
import 'MyOrdersCard.dart';

class MyOrders extends StatefulWidget {
  MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBars('myorders'.tr, false, 93, true, 98),
        body: ListView.builder(
          padding: EdgeInsets.only(bottom: 50.h),
          itemCount: 4,
          itemBuilder: (context, index) {
            return MyOrdersCard();
          },
        ),
      ),
    );
  }
}
