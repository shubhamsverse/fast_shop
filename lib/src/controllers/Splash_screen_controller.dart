import 'package:fast_shop/src/views/Auth/login_screen.dart';
import 'package:fast_shop/src/views/navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController
{
 //AuthController.intsance..
  static SplashScreenController instance = Get.find();
  //email, password, name...
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user){
    if(user==null){
      print("login page");
      Get.to(()=>LoginScreen());
    }else{
      Get.to(()=>NavigationScreen(tabIndex: 1,));
    }
  }
}