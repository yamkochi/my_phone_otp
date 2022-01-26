import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_login/controller/login_controller.dart';
import 'package:phone_login/views/login_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  LoginController controller = Get.put(LoginController());
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Home Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _auth.signOut();
          controller.mobileVerificationState.value = 'showMobileFormState';
          controller.showLoading.value = false;
          Get.to(() => LoginScreen());
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}
