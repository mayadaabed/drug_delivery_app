import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Medications/appBar/AppBars.dart';
import 'FavoriteCard.dart';

class Favourite extends StatefulWidget {
  Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBars('Favourites', false, 93, true, 98),
        body: ListView.builder(
          padding: EdgeInsets.only(bottom: 50.h),
          itemCount: 4,
          itemBuilder: (context, index) {
            return FavoriteCard();
          },
        ),
    );
  }
}
