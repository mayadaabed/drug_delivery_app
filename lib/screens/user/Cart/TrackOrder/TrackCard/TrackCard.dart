import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../helpers/theme.dart';

class TrackCard extends StatefulWidget {
  TrackCard({Key? key}) : super(key: key);

  @override
  State<TrackCard> createState() => _TrackCardState();
}

class _TrackCardState extends State<TrackCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 359.w,
        height: 230.h,
        margin: EdgeInsets.only(top: 20.h, right: 10.w, left: 10.w),
        padding: EdgeInsets.only(top: 12.h, right: 12.w, left: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.w),
          border: Border.all(color: lightGrey2, width: 1.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order #3455',
              style: TextStyle(
                color: mainGreen,
                fontSize: 16.sp,
                fontFamily: montserratBold,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Few minutes ago',
              style: TextStyle(
                color: HexColor('#D1D1D1'),
                fontSize: 12.sp,
                fontFamily: montserratBold,
              ),
            ),
            SizedBox(height: 15.h),
            Row(children: [
              SvgPicture.asset('assets/images/market.svg'),
              SizedBox(width: 15.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Musallam pharmacy',
                    style: TextStyle(
                        color: black,
                        fontSize: 14.sp,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '3 Items : Delivery Time  30 Min',
                    style: TextStyle(
                        color: HexColor('#A8A8A8'),
                        fontSize: 12.sp,
                        fontFamily: poppins),
                  ),
                ],
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(left: 7.w),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset('assets/images/line.svg')),
            ),
            Row(children: [
              SvgPicture.asset('assets/images/locationround.svg'),
              SizedBox(width: 15.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home Adress',
                    style: TextStyle(
                        color: black,
                        fontSize: 14.sp,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '''Gaza, Al Remal -Ahmed Abd El Azeez
Street next to AlKenz Mosque''',
                    style: TextStyle(
                        color: HexColor('#A8A8A8'),
                        fontSize: 12.sp,
                        fontFamily: poppins),
                  ),
                ],
              ),
            ]),
          ],
        ));
  }
}
