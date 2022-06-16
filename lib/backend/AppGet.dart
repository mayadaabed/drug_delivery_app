import 'package:flutter_easyloading/flutter_easyloading.dart';

class AppGet {
  var dissmis = EasyLoading.dismiss();
  int userorpharm = 0;
  int logornot = 0;

  var tokenuser = '';
  var tokentype = '';

  Map<String, dynamic> userMap = {};
  Map<String, dynamic> PharmacyMap = {};

  setPharmacyMap(Map<String, dynamic> map) {
    this.PharmacyMap = map;
  }
}
