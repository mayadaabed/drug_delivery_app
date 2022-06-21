import 'dart:io';

import 'package:drug_delivery_application/helpers/theme.dart';
import 'package:drug_delivery_application/screens/user/Medications/appBar/AppBars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:collection/collection.dart';

import '../../../../backend/firebase.dart';

class AddNewMedicine extends StatefulWidget {
  AddNewMedicine({Key? key}) : super(key: key);

  @override
  State<AddNewMedicine> createState() => _AddNewMedicineState();
}

class _AddNewMedicineState extends State<AddNewMedicine> {
  TextEditingController proNamecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController desccontroller = TextEditingController();
  TextEditingController howToUseccontroller = TextEditingController();
  String _category = 'Category';
  String categoryId = '1';
  bool _switchValue = true;

  XFile? pickedImages;
  String? base64Image;

  final ImagePicker picker = ImagePicker();
  Future getimagdata(BuildContext context) async {
    final imageSource = await showDialog<ImageSource>(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Image source",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 22.sp, fontFamily: montserratBold, color: black),
              ),
              actions: <Widget>[
                MaterialButton(
                  child: Text(
                    "Camera",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: montserratBold,
                        color: black),
                  ),
                  onPressed: () {
                    Navigator.pop(context, ImageSource.camera);
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Gallery",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: montserratBold,
                        color: black),
                  ),
                  onPressed: () {
                    Navigator.pop(context, ImageSource.gallery);
                  },
                )
              ],
            ));

    if (imageSource != null) {
      var imgfil = await picker.pickImage(source: imageSource);
      print('images is full');

      pickedImages = imgfil;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: white,
            appBar: AppBars('Add New', false, 93, true, 85),
            body: ListView(
              padding: EdgeInsets.only(bottom: 50.h),
              children: [
                Container(
                  height: 210.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: white,
                    gradient: LinearGradient(
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                        colors: [white, HexColor('#E2F6E5')]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      getimagdata(context);
                    },
                    child: pickedImages == null
                        ? Center(
                            child: Icon(
                            Icons.add_a_photo,
                            color: grey,
                            size: 100,
                          ))
                        : Image.file(
                            File(pickedImages!.path),
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Availability",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.sp),
                      ),
                      FlutterSwitch(
                        height: 20.0,
                        width: 40.0,
                        padding: 4.0,
                        toggleSize: 15.0,
                        borderRadius: 10.0,
                        activeColor: mainColor,
                        value: _switchValue,
                        onToggle: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(17.w),
                  child: Column(children: [
                    SizedBox(height: 20.h),
                    TextField(
                      controller: proNamecontroller,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Product Name"),
                    ),
                    SizedBox(height: 10.h),
                    TextField(
                      controller: pricecontroller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "price"),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: grey, width: .7.w)),
                        height: 60.h,
                        padding: EdgeInsets.only(left: 17.w, right: 17.w),
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: categoryId,
                            hint: Text(
                              _category,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: montserratBold,
                                  color: black),
                            ),
                            items: appGet.catNames.isNotEmpty
                                ? IterableZip([appGet.catNames, appGet.catIds])
                                    .map((value) {
                                    return DropdownMenuItem<String>(
                                      value: value[1],
                                      child: Text(
                                        value[0],
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontFamily: montserratBold,
                                            color: black),
                                      ),
                                    );
                                  }).toList()
                                : null,
                            onChanged: (newValue) {
                              setState(() {
                                categoryId = newValue!;
                              });
                            },
                          ),
                        )),
                    SizedBox(height: 10.h),
                    TextField(
                      controller: desccontroller,
                      maxLines: 7,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Description"),
                    ),
                    SizedBox(height: 10.h, width: 10.w),
                    TextField(
                      controller: howToUseccontroller,
                      maxLines: 7,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "How to use"),
                    ),
                    SizedBox(height: 20.h, width: 20.w),
                    RaisedButton.icon(
                      onPressed: () {
                        if (proNamecontroller.text.isEmpty) {
                          EasyLoading.showError('Please enter medicine name');
                        } else if (pricecontroller.text.isEmpty) {
                          EasyLoading.showError('Please enter price');
                        } else if (categoryId == null) {
                          EasyLoading.showError('Please select category');
                        } else if (desccontroller.text.isEmpty) {
                          EasyLoading.showError('Please enter description');
                        } else if (howToUseccontroller.text.isEmpty) {
                          EasyLoading.showError('Please enter how to use');
                        } else if (pickedImages == null) {
                          EasyLoading.showError('Please select image');
                        } else {
                          EasyLoading.show(status: 'Uploading...');
                          addMedicine(
                                  File(pickedImages!.path),
                                  proNamecontroller.text.toString(),
                                  pricecontroller.text.toString(),
                                  _switchValue == true ? '1' : '0',
                                  desccontroller.text.toString(),
                                  howToUseccontroller.text.toString(),
                                  categoryId,
                                  ''
                                  )
                              .then((value) {
                            if (value) {
                              EasyLoading.dismiss();
                              EasyLoading.showSuccess(
                                  'Medicine added successfully');
                            }
                          });
                        }
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      label: const Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      textColor: const Color.fromRGBO(255, 255, 255, 1),
                      splashColor: green,
                      color: mainColor,
                    ),
                  ]),
                )
              ],
            )));
  }
}
