import 'package:drug_delivery_application/screens/user/AllPharmacey/PharmaceyDetails/Cards/mostPopular.dart';
import 'package:drug_delivery_application/screens/user/HomePage/cards/categoriesCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../backend/firebase.dart';
import '../../../../helpers/theme.dart';
import '../../CustomAppbar/CustomAppbar.dart';
import '../../Medications/Card/RelatedProductsCard.dart';
import 'DetailsCard.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PharmaceyDetails extends StatefulWidget {
  final String id;
  final String name;
  final String image;
  final String address;
  final String phone;
  final String openHours;
  PharmaceyDetails(
      this.id, this.name, this.image, this.address, this.phone, this.openHours,
      {Key? key})
      : super(key: key);

  @override
  State<PharmaceyDetails> createState() => _PharmaceyDetailsState();
}

class _PharmaceyDetailsState extends State<PharmaceyDetails> {
  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;
  late double _rating;

  IconData? _selectedIcon;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: const CustomAppbar(true),
        body: ListView(padding: EdgeInsets.only(bottom: 50.h), children: [
          DetailsCard(
            widget.name,
            widget.image,
            widget.address,
            widget.phone,
          ),
          Padding(
            padding: EdgeInsets.only(top: 22.h, left: 29.w, right: 19.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: mainGreen,
                      fontFamily: montserratBold,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: _initialRating,
                      minRating: 1,
                      direction: _isVertical ? Axis.vertical : Axis.horizontal,
                      allowHalfRating: true,
                      unratedColor: Colors.amber.withAlpha(50),
                      itemCount: 5,
                      itemSize: 15.0,
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
                    SizedBox(width: 2.w),
                    Text(
                      '4.0',
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: HexColor('#FFB238'),
                          fontFamily: montserratBold,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 21.h, left: 29.w, right: 19.w),
            child: Text('Medicine, Beauty & supplies',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: montserratBold,
                    fontWeight: FontWeight.w500,
                    color: mainGreen)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.h, left: 29.w, right: 19.w),
            child: Row(
              children: [
                Text('Address:',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w500,
                        color: HexColor('#666769'))),
                SizedBox(width: 2.w),
                Text(widget.address,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: montserratBold,
                        color: HexColor('#666769'))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.h, left: 29.w, right: 19.w),
            child: Row(
              children: [
                Text('Hours:',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w500,
                        color: HexColor('#666769'))),
                SizedBox(width: 2.w),
                Text(widget.openHours,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w500,
                        color: mainGreen)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 63.h, left: 15.w, right: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Most Popular',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w500,
                        color: mainGreen)),
                Text('Showing items 8',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w500,
                        color: lightGrey)),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 140.h,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return MostPopular();
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w700,
                        color: HexColor('#393939'))),
                Text('View All',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontFamily: montserratBold,
                        fontWeight: FontWeight.w500,
                        color: HexColor('#666769'))),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
              height: 180.h,
              child: StreamBuilder(
                  stream: getAllCategories(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return snapshot.hasData
                        ? ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.size,
                            itemBuilder: (context, index) {
                              return CategoriesCard(
                                snapshot.data!.docs[index]['catId'].toString(),
                                snapshot.data!.docs[index]['catName']
                                    .toString(),
                                snapshot.data!.docs[index]['catImage']
                                    .toString(),
                              );
                            },
                          )
                        : Text('');
                  })),
        ]),
      ),
    );
  }
}
