// ignore_for_file: deprecated_member_use


import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:phone_login/controller/login_controller.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

 LoginController controller = Get.put(LoginController());
 @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Obx(()=>Text(controller.mobileVerificationState.value)),),
        body: Container(
          child:  Obx(()=> controller.showLoading.isTrue
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              :  Obx(()=>controller.mobileVerificationState.value=='showMobileFormState'
                  ? controller.getMobileFormWidget()
                  : controller.getOtpFormWidget(),)),


          padding: const EdgeInsets.all(16),
        ));
  }
}
