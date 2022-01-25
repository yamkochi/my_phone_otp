import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_login/controller/initiate_firebase.dart';
import 'package:phone_login/views/home_screen.dart';
import 'package:phone_login/views/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: InitializerWidget());
  }
}

class InitializerWidget extends StatelessWidget {
  InitializerWidget({Key? key}) : super(key: key);

  final controller = Get.put(FireBaseController());

  @override
  Widget build(BuildContext context) {
    return controller.isLoading
        ? const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : controller.existing
            ? const HomeScreen()
            : const LoginScreen();
  }
}
