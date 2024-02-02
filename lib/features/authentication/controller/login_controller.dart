// ---------------- Login Controller -------------------------------
import 'package:bidding_app/common/network/network_manager.dart';
import 'package:bidding_app/utils/popup/popup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

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

  // ----- Email & Password Login ------------------
  Future<void> signIn() async {
    if (kDebugMode) {
      print('Called signIn');
    }
    // --- Start loading
    // FAFullScreenLoader.openLoadingDialog('We are trying you log you in...', animation)

    // --- Check internet connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      FAFullScreenLoader.stopLoading();
      return;
    }
  }

  // ----- Google Login ------------------
  Future<void> googleSignIn() async {}

  // ----- Facebook Login ------------------
  Future<void> facebookSignIn() async {}
}
