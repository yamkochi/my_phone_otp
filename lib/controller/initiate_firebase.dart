import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FireBaseController extends GetxController {
  FirebaseAuth? _auth;
  User? _user;
  bool isLoading = true;
  bool existing = false;

  //override
  //void onInit() {
  // super.onInit();
//
  ////getUser();
  //}

 FireBaseController() {
   _auth = FirebaseAuth.instance;
   _user = _auth!.currentUser;
   if (_user?.email != null) {
     existing = true;
   }

   isLoading = false;
 }
}


//class InitializerWidgetcccc extends StatelessWidget {
//  @override
//  _InitializerWidgetState createState() => _InitializerWidgetState();
//}
//
//class _InitializerWidgetState extends State<InitializerWidget> {
//
//  FirebaseAuth _auth;
//
//  User _user;
//
//  bool isLoading = true;
//
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    _auth = FirebaseAuth.instance;
//    _user = _auth.currentUser;
//    isLoading = false;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return isLoading ? Scaffold(
//      body: Center(
//        child: CircularProgressIndicator(),
//      ),
//    ) : _user == null ? LoginScreen() : HomeScreen();
//  }
//}



