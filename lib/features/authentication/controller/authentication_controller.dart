// ---------------- Login Controller -------------------------------
import 'package:bidding_app/features/authentication/screen/registration/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationController extends GetxController {
  static AuthenticationController get instance => Get.find();

  // Variable
  // ------ Email Form -----
  final hidePassword = false.obs;
  final rememberMe = false.obs;
  final disableButton = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // ----- Storage -------
  final localStorage = GetStorage();

  // ----- Init --------
  @override
  void onInit() {
    // ---- Read storage for (E & P)
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  Future<void> redirectAuthScreen() async {
    //--- Email exist ? redirect to login else to register
    Get.to(() => const RegisterScreen());
  }

  // ----- Google Login ------------------
  Future<void> googleSignIn() async {}

  // ----- Facebook Login ------------------
  Future<void> facebookSignIn() async {}
}
