import 'package:bidding_app/common/app/app_repository.dart';
import 'package:bidding_app/firebase_options.dart';
import 'package:bidding_app/utils/constants/colors.dart';
import 'package:bidding_app/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // Add widgets binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Initialize local storage
  await GetStorage.init();

  // Add native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Status bar color
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      // statusBarColor: Color.fromARGB(0, 238, 129, 129),
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  // Initialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AppRepository()));

  // Start the application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Art Bid',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: FAAppTheme.darkTheme,
      theme: FAAppTheme.lightTheme,

      // Show loader or circular progress indicator
      home: const Scaffold(
        backgroundColor: FAColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
