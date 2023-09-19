import 'app/modules/bonus_saldo/bonus_saldo.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/modules/get_started/get_started_view.dart';
import 'app/modules/sig_nup/sign_up_view.dart';
import 'app/modules/splash/splash_view.dart';
import 'app/themes/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MainApp());
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashView(),
        GetStartedView.route: (context) => const GetStartedView(),
        SignUpView.route: (context) => const SignUpView(),
        BonusSaldoView.route: (context) => const BonusSaldoView(), 
      },
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.comfortable,

        // default color theme
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          foregroundColor: whiteColor,
        ),
        primaryColor: primaryColor,
        errorColor: errorColor,
        indicatorColor: primaryColor,
        hintColor: greyColor,

        // default input decoration for textfield
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: primaryColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
