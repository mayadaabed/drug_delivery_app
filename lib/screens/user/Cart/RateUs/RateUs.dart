import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../helpers/theme.dart';
import '../../Medications/appBar/AppBars.dart';

class RateUs extends StatefulWidget {
  RateUs({Key? key}) : super(key: key);

  @override
  State<RateUs> createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;
  late double _rating;

  IconData? _selectedIcon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBars('Rate us', false, 93, true, 105),
        body: ListView(
          children: [
            SizedBox(height: 160.h),
            Container(
              height: 235.h,
              width: 215.w,
              margin: EdgeInsets.only(left: 80.w, right: 80.w),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: .01,
                      blurRadius: 5,
                    )
                  ]),
              child: Column(children: [
                SizedBox(height: 41.h),
                Text(
                  'Enjoying the app?',
                  style: TextStyle(
                    color: mainGreen,
                    fontSize: 17.sp,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 17.h),
                Text(
                  '''Tap a star or rate it on the 
App Store''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: mainGreen,
                    fontSize: 12.sp,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 40.h),
                RatingBar.builder(
                  initialRating: _initialRating,
                  minRating: 1,
                  direction: _isVertical ? Axis.vertical : Axis.horizontal,
                  allowHalfRating: true,
                  unratedColor: Colors.amber.withAlpha(50),
                  itemCount: 5,
                  itemSize: 30.0,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    _selectedIcon ?? Icons.star,
                    color: HexColor('#FFB238'),
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      _rating = rating;
                    });
                  },
                  updateOnDrag: true,
                ),
              ]),
            )
          ],
        ));
  }
}
