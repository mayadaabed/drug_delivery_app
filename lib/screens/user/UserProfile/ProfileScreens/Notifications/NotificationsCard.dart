import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../helpers/theme.dart';

class NotificationsCard extends StatefulWidget {
  NotificationsCard({Key? key}) : super(key: key);

  @override
  State<NotificationsCard> createState() => _NotificationsCardState();
}

class _NotificationsCardState extends State<NotificationsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      margin: EdgeInsets.only(top: 40.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Row(
              children: [
                Container(
                  width: 89.w,
                  height: 85.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: HexColor('#D1D1D1'),
                      width: 1.0,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/med.png',
                  ),
                ),
                SizedBox(width: 6.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 230.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Buy one Get 200gm Free',
                            style: TextStyle(
                                color: black1,
                                fontSize: 14.sp,
                                fontFamily: poppins,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: black,
                            size: 15.w,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      '''Buy 1 Get 1 Free for small sizes
Until Mar 22 2022.''',
                      style: TextStyle(
                          color: HexColor('#AAAAAA'),
                          fontSize: 10.sp,
                          fontFamily: poppins),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      'Few minutes ago',
                      style: TextStyle(
                          color: black, fontSize: 10.sp, fontFamily: poppins),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            height: .5.h,
            color: HexColor('#D1D1D1'),
          )
        ],
      ),
    );
  }
}
