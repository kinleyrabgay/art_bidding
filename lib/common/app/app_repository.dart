import 'package:bidding_app/features/authentication/screen/authentication_screen.dart';
import 'package:bidding_app/features/onboarding/screen/onboarding_screen.dart';
import 'package:bidding_app/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// ---------------- Application -------------------------------

class AppRepository extends GetxController {
  static AppRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // Called from main.dart on app launch
  @override
  void onReady() {
    // Remove native-splash
    FlutterNativeSplash.remove();
    screenRedirection();
  }

  // Function to show relevant screen
  screenRedirection() async {
    // Get user
    final user = _auth.currentUser;

    // if user already logged in & email is verified -> redirect to navigation menu
    // else to verify email screen
    if (user != null) {
      if (user.emailVerified) {
        //--- Get.ofAll() used _don't want to let user navigate back
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => const NavigationMenu());
      }
    } else {
      //--- Write to storage if null entry
      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const AuthenticationScreen())
          : Get.offAll(() => const OnboardingScreen());
    }
  }
}
