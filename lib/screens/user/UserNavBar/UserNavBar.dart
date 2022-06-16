import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/Chat/CahtList.dart';
import 'package:drug_delivery_application/screens/user/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Cart/Cart.dart';
import '../UserProfile/UserProfile.dart';

class UserNavBar extends StatefulWidget {
  const UserNavBar({Key? key}) : super(key: key);

  @override
  State<UserNavBar> createState() => _UserNavBarState();
}

class _UserNavBarState extends State<UserNavBar> {
  List<Widget> listScreens = [];
  int _pageIndex = 0;
  @override
  void initState() {
    super.initState();
    listScreens = [HomePage(), Cart(), ChatList(), UserProfile()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreens[_pageIndex],
      bottomNavigationBar: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 20,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _pageIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 10,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/home.svg',
                height: 22.h,
              ),
              // Icon(
              //   Icons.,
              //   color: HexColor('#838181'),
              //   size: 22,
              // ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/shoppingcart.svg'),
              // Icon(
              //   Icons.,
              //   color: HexColor('#838181'),
              //   size: 22,
              // ),
              label: 'Shopping cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/textmessage.svg'),
              // Icon(
              //   Icons.,
              //   color: HexColor('#838181'),
              //   size: 22,
              // ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/person.svg'),
              // Icon(
              //   Icons.,
              //   color: HexColor('#838181'),
              //   size: 22,
              // ),
              label: 'My Account',
            ),
          ],
          selectedItemColor: mainColor,
          unselectedItemColor: HexColor('#838181'),
          selectedLabelStyle: TextStyle(
              fontSize: 10.sp,
              fontFamily: poppins,
              fontWeight: FontWeight.w800),
          unselectedLabelStyle: TextStyle(
              fontSize: 10.sp,
              fontFamily: poppins,
              fontWeight: FontWeight.w800),
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
          },
        ),
      ),
    );
  }
}
