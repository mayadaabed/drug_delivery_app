import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drug_delivery_application/backend/AppGet.dart';
import 'package:drug_delivery_application/screens/VerfiyAccount/VerfiyAccount.dart';
import 'package:drug_delivery_application/screens/pharmacey/PharmNavBar/PharmNavBar.dart';
import 'package:drug_delivery_application/screens/user/UserNavBar/UserNavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../screens/pharmacey/PharmSignUp/verfiyEmail.dart';
import '../screens/user/AddAddress/AddAddress.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseStorage firebaseStorage = FirebaseStorage.instance;
DatabaseReference dbRef =
    FirebaseDatabase.instance.reference().child("userNames");

final AppGet appGet = Get.put(AppGet());

var uuid = const Uuid();
var v4 = uuid.v4();

String userIds = "";

String usersCollectionName = 'Users';
String pharmaciesCollectionName = 'Pharmacies';

savetoken(String token, int type) async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'token';
  final keyPharmacyorUser = 'type';
  final value = token;
  final valtyp = type;

  appGet.tokenuser = token;
  appGet.tokentype = type.toString();
  await prefs.setString(key, value);

  await prefs.setString(keyPharmacyorUser, valtyp.toString());
  print('trpesave' + appGet.tokentype.toString());
  print('tokensave' + appGet.tokenuser.toString());
}

Future<Map?> signInWithEmailAndPassword(
    {required String email,
    required String password,
    required int userOrPhram}) async {
  EasyLoading.show(status: 'Loading...');
  try {
    UserCredential userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    if (userCredential != null) {
      userIds = userCredential.user!.uid;

      Map map;
      if (userOrPhram == 1) {
        map = await getUserFromFirestore(userId: userIds);
        appGet.userorpharm = 1;
      } else {
        map = await getPharmacyFromFirestore(userId: userIds);
        appGet.userorpharm = 2;
      }
      if (appGet.logornot == 1) {
      } else {
        appGet.dissmis;
        userOrPhram == 1
            ? Get.offAll(() => const UserNavBar())
            : Get.offAll(() => const PharmNavBar());
      }
      return map;
    } else {
      EasyLoading.showError('Failed');

      return null;
    }
  } on FirebaseAuthException catch (e) {
    appGet.dissmis;
    if (e.code == 'user-not-found') {
      EasyLoading.showError('Invalid Email');
    } else if (e.code == 'wrong-password') {
      EasyLoading.showError('Invalid Password');
    }
    return null;
  } catch (e) {
    appGet.dissmis;
    EasyLoading.showError(e.toString());
    return null;
  }
}

Future<Map<String, dynamic>> getUserFromFirestore(
    {required String userId}) async {
  print(userIds.toString());
  DocumentSnapshot documentSnapshot =
      await firestore.collection(usersCollectionName).doc(userIds).get();
  Map<String, dynamic>? response =
      documentSnapshot.data() as Map<String, dynamic>;
  print('this i need' + response.toString());
  if (response == null) {
    appGet.logornot = 1;
    appGet.dissmis;
  } else {
    savetoken(userIds, 1);
  }
  appGet.userMap = response;
  print('this i map' + appGet.userMap.toString());
  return response;
}

Future<Map<String, dynamic>> getPharmFromFirestore(
    {required String userId}) async {
  print(userIds.toString());
  DocumentSnapshot documentSnapshot =
      await firestore.collection(pharmaciesCollectionName).doc(userIds).get();
  Map<String, dynamic>? response =
      documentSnapshot.data() as Map<String, dynamic>;
  print('this i need' + response.toString());
  if (response == null) {
    appGet.logornot = 1;
    appGet.dissmis;
  } else {
    savetoken(userIds, 1);
  }
  appGet.PharmacyMap = response;
  print('this i map' + appGet.PharmacyMap.toString());
  return response;
}

Future<Map<String, dynamic>> getPharmacyFromFirestore(
    {required String userId}) async {
  print(userId);
  DocumentSnapshot documentSnapshot =
      await firestore.collection(pharmaciesCollectionName).doc(userId).get();
  Map<String, dynamic> responce =
      documentSnapshot.data() as Map<String, dynamic>;
  if (responce == null) {
    appGet.logornot = 1;
    appGet.dissmis;
  } else {
    savetoken(userIds, 2);
    appGet.setPharmacyMap(responce);
  }
  return responce;
}

var verfied;
Future<String?> registerUsingEmailAndPassword({
  required String email,
  required String password,
}) async {
  print(email + 'pass:=' + password);

  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    var user = userCredential.user;
    verfied = user?.sendEmailVerification();
    print(userCredential.user!.uid);
    if (userCredential != null) {
      String userId = userCredential.user!.uid;
      savetoken(userId, 1);
      return userId;
    } else {
      EasyLoading.showError('Failed');

      return null;
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      appGet.dissmis;
      EasyLoading.showError('Weak Password');
    } else {
      appGet.dissmis;
      EasyLoading.showError(e.code);
    }
    return null;
  } catch (e) {
    EasyLoading.showError(e.toString());
    return null;
  }
}

registrationProcess(
    {String? name,
    required String email,
    required String password,
    required String mobile,
    required String address,
    required bool isUser,
    String? pharmName,
    String? openHours}) async {
  EasyLoading.show(status: 'Loading...');
  try {
    saveUserNameInRealtimeDb(userName: email);

    String? userId =
        await registerUsingEmailAndPassword(email: email, password: password);

    print(userId);
    if (userId == null) {
      throw ('register_failed');
    } else {
      userIds = userId;
      bool isSuccess = false;
      if (isUser) {
        isSuccess = await saveUserInFirestore(
            userId: userId,
            name: name!,
            email: email,
            mobile: mobile,
            address: address);
      } else {
        isSuccess = await savePharmacyInFirestore(
            userId: userId,
            email: email,
            mobile: mobile,
            address: address,
            pharmName: pharmName!,
            openHours: openHours!);
      }

      if (isSuccess == true && isUser == true) {
        getUserFromFirestore(userId: userId);

        appGet.dissmis;
        Get.offAll(() => VerfiyEmail(name!,email));
        // Get.offAll(() => UserNavBar());
      } else {
        getPharmFromFirestore(userId: userId);
        appGet.dissmis;
        Get.offAll(() => VerfiyEmail(name!, email));
        //    Get.offAll(() => AddAddress(name!));
        // Get.offAll(() => PharmNavBar());
      }
      appGet.dissmis;
      if (isSuccess == false) {
        throw ('Failed Save user in firestore');
      }
    }
  } on Exception catch (e) {
    appGet.dissmis;
    EasyLoading.showError(e.toString());
  }
}

Future<bool> saveUserInFirestore(
    {required String name,
    required String email,
    required String mobile,
    required String address,
    required String userId}) async {
  FieldValue timestamp = FieldValue.serverTimestamp();

  try {
    await firestore.collection(usersCollectionName).doc(userId).set({
      'userName': name,
      'email': email,
      'phoneNumber': mobile,
      'address': address,
      'userId': userId,
      'createdDate': timestamp
    });
    appGet.dissmis;
    return true;
  } on Exception catch (e) {
    appGet.dissmis;
    return false;
  }
}

Future<bool> savePharmacyInFirestore(
    {required String email,
    required String mobile,
    required String address,
    required String userId,
    required String pharmName,
    required String openHours}) async {
  FieldValue timestamp = FieldValue.serverTimestamp();

  try {
    await firestore.collection(pharmaciesCollectionName).doc(userId).set({
      'email': email,
      'phoneNumber': mobile,
      'address': address,
      'userId': userId,
      'createdDate': timestamp,
      'openHours': openHours,
      'pharmName': pharmName,
    });
    appGet.dissmis;
    return true;
  } on Exception catch (e) {
    appGet.dissmis;
    return false;
  }
}

saveUserNameInRealtimeDb({required String userName}) async {
  dbRef.push().set({"userName": userName});
}

Future<String?> uploadImage(File? file, String? userId) async {
  String msar = Uuid().v1();
  print('msar' + msar);
  print('msaruser' + appGet.tokenuser.toString());
  String downloadUrl = '';
  try {
    final Reference reference =
        FirebaseStorage.instance.ref().child("profileImages/$msar.png");

    await reference.putFile(file!);

    downloadUrl = await reference.getDownloadURL();

    await FirebaseFirestore.instance
        .collection(pharmaciesCollectionName)
        .doc(appGet.tokenuser)
        .update({
      "imageUrl": downloadUrl,
    });
    getUserFromFirestore(userId: appGet.tokenuser);
    return downloadUrl;
  } on Exception catch (e) {
    return null;
  }
}

Future sendPasswordResetEmail(String email) async {
  return auth.sendPasswordResetEmail(email: email);
}
