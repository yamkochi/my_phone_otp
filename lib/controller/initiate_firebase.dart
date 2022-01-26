import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'package:get/get.dart';

class FireBaseController extends GetxController {
  final FirebaseAuth? _auth=FirebaseAuth.instance;
   User? _user;
  var isLoading = true.obs;
  var existing = false.obs;

 //_auth = FirebaseAuth.instance;
  // _user = _auth?.currentUser;

  FireBaseController () {
    //_auth = FirebaseAuth.instance;
    _user = _auth?.currentUser;

    //Get.snackbar('-------', '--------',
    //    titleText: const Text('User Auth', style: TextStyle(color: Colors.red)),
    //    backgroundColor: Colors.black,
    //    messageText: const Text('dfsf'),
    //    duration: const Duration(seconds: 10));

    if (_user != null) {

      existing.value=true;
      isLoading.value=false;
      if (kDebugMode) {
        print('Anand user exixst ${existing.value}${isLoading.value}');
      }
    } else {
      existing.value=false;
      isLoading.value=false;
      if (kDebugMode) {
        print('Anand user dont exisst ${existing.value}${isLoading.value}');
      }

      // isLoading.isFalse;

      if (kDebugMode) {
        print('Anand anand ${existing.value}${isLoading.value}');
      }
    }
  }
}
