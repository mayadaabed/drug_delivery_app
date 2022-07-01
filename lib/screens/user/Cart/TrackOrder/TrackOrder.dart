import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../helpers/theme.dart';
import '../../Medications/appBar/AppBars.dart';
import 'TrackCard/TrackCard.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:tuple/tuple.dart';

class TrackOrder extends StatefulWidget {
  TrackOrder({Key? key}) : super(key: key);

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  int groupValue = 0;

  StepperType _type = StepperType.horizontal;

  List<Tuple2> tuples = [
    Tuple2(
      Icons.check,
      StepState.indexed,
    ),
    Tuple2(
      Icons.directions_bus,
      'shipped'.tr,
    ),
    Tuple2(
      Icons.directions_railway,
      StepState.complete,
    ),
    Tuple2(
      Icons.directions_boat,
      StepState.disabled,
    ),
  ];

  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBars('trackorder'.tr, false, 93, true, 85),
        body: ListView(padding: EdgeInsets.only(bottom: 50.h), children: [
          TrackCard(),
          EnhanceStepper(
              type: StepperType.vertical,
              horizontalTitlePosition: HorizontalTitlePosition.bottom,
              horizontalLinePosition: HorizontalLinePosition.top,
              physics: NeverScrollableScrollPhysics(),
              steps: [
                EnhanceStep(
                  icon: Icon(
                    Icons.check_circle_outline,
                    color: mainColor,
                    size: 27,
                  ),
                  isActive: false,
                  title: Text(
                    "ordered".tr,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.w500,
                      color: black1,
                    ),
                  ),
                  content: Text(""),
                ),
                EnhanceStep(
                  icon: Icon(
                    Icons.check_circle_outline,
                    color: mainColor,
                    size: 27,
                  ),
                  isActive: false,
                  title: Text(
                    "shipped".tr,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.w500,
                      color: black1,
                    ),
                  ),
                  content: Text(""),
                ),
                EnhanceStep(
                  icon: Icon(
                    Icons.check_circle_outline,
                    color: mainColor,
                    size: 27,
                  ),
                  isActive: false,
                  title: Text(
                    "outfordelivery".tr,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.w500,
                      color: black1,
                    ),
                  ),
                  content: Text(""),
                ),
                EnhanceStep(
                  icon: Icon(
                    Icons.check_circle_outline,
                    color: mainColor,
                    size: 27,
                  ),
                  isActive: false,
                  title: Text(
                    "recived".tr,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.w500,
                      color: black1,
                    ),
                  ),
                  content: Text(""),
                )
              ],
              onStepCancel: () {},
              onStepContinue: () {},
              onStepTapped: (index) {},
              controlsBuilder: (BuildContext context, ControlsDetails details) {
                return Container();
              }),
          // Stepper(
          //   controlsBuilder: (context, onStepContinue) {
          //     return Container();
          //   },
          //   type: StepperType.vertical,
          //   steps: [
          //     Step(
          //       isActive: true,
          //       title: Text(
          //         "Ordered",
          //         style: TextStyle(
          //           fontSize: 16.sp,
          //           fontFamily: montserratBold,
          //           fontWeight: FontWeight.w500,
          //           color: black1,
          //         ),
          //       ),
          //       content: Text(""),
          //     ),
          //     Step(
          //       title: Text(
          //         "Shipped",
          //         style: TextStyle(
          //           fontSize: 16.sp,
          //           fontFamily: montserratBold,
          //           fontWeight: FontWeight.w500,
          //           color: black1,
          //         ),
          //       ),
          //       content: Text(''),
          //     ),
          //     Step(
          //       title: Text(
          //         "Out for deleviry",
          //         style: TextStyle(
          //           fontSize: 16.sp,
          //           fontFamily: montserratBold,
          //           fontWeight: FontWeight.w500,
          //           color: black1,
          //         ),
          //       ),
          //       content: Text(''),
          //     ),
          //     Step(
          //       title: Text(
          //         "Received",
          //         style: TextStyle(
          //           fontSize: 16.sp,
          //           fontFamily: montserratBold,
          //           fontWeight: FontWeight.w500,
          //           color: black1,
          //         ),
          //       ),
          //       content: Text(''),
          //     ),
          //   ],
          // ),
          Padding(
            padding: EdgeInsets.only(top: 44.h, left: 13.w, right: 13.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 52.h,
                      width: 188.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: mainColor),
                      child: Center(
                          child: Text(
                        'confirmorder'.tr,
                        style: TextStyle(
                          color: white,
                          fontSize: 13.sp,
                          fontFamily: montserratBold,
                          fontWeight: FontWeight.w600,
                        ),
                      ))),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 52.h,
                      width: 188.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: HexColor('#F2F2F2')),
                      child: Center(
                          child: Text(
                        'done'.tr,
                        style: TextStyle(
                          color: black1,
                          fontSize: 18.sp,
                          fontFamily: montserratBold,
                          fontWeight: FontWeight.w600,
                        ),
                      ))),
                ),
              ],
            ),
          )
        ]));
  }
}
