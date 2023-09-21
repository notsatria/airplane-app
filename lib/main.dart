import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/modules/bonus_saldo/bonus_saldo.view.dart';
import 'app/modules/checkout/checkout_view.dart';
import 'app/modules/choose_seat/choose_seat_view.dart';
import 'app/modules/detail/detail_view.dart';
import 'app/modules/get_started/get_started_view.dart';
import 'app/modules/home/home_view.dart';
import 'app/modules/sign_up/sign_up_view.dart';
import 'app/modules/splash/splash_view.dart';
import 'app/modules/success_checkout/success_checkout_view.dart';
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
        HomeView.route: (context) => const HomeView(),
        DetailView.route: (context) => const DetailView(),
        ChooseSeatView.route: (context) => const ChooseSeatView(),
        CheckoutView.route: (context) => const CheckoutView(),
        SuccessCheckoutView.route: (context) => const SuccessCheckoutView(),
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

        backgroundColor: backgroundColor,

        // default input decoration for textfield
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: primaryColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryColor,
              width: 2,
            ),
          ),
        ),),
    );
  }
}
