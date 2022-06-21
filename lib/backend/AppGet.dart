import 'package:flutter_easyloading/flutter_easyloading.dart';

class AppGet {
  var dissmis = EasyLoading.dismiss();
  int userorpharm = 0;
  int logornot = 0;

  var tokenuser = '';
  var tokentype = '';

  String catId = '';
  String catName = '';

  List catIds = [];
  List catNames = [];

  Map<String, dynamic> userMap = {};
  Map<String, dynamic> pharmacyMap = {};

  setPharmacyMap(Map<String, dynamic> map) {
    this.pharmacyMap = map;
  }
}
