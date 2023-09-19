import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/sizing.dart';
import '../../widgets/custom_button.dart';
import '../sign_up/sign_up_view.dart';

class GetStartedView extends StatelessWidget {
  static const route = '/get-started';
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: maxWidth,
        height: maxHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildTitleText(),
            const SizedBox(
              height: 10,
            ),
            _buildSubtitleText(),
            const SizedBox(
              height: 50,
            ),
            _buildStartButton(context),
            SizedBox(
              height: maxHeight / 9,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTitleText() {
    return Text(
      'Fly Like a Bird',
      style: poppinsSemiBold.copyWith(fontSize: 32, color: whiteColor),
    );
  }

  Widget _buildSubtitleText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: marginLarge),
      child: Text(
        'Explore new world with us and let yourself get an amazing experiences',
        textAlign: TextAlign.center,
        maxLines: 2,
        style: poppinsLight.copyWith(fontSize: 16, color: whiteColor),
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return CustomRoundedButton(
      text: 'Get Started',
      onTap: () {
        Navigator.pushNamed(context, SignUpView.route);
      },
      width: 220,
      height: 55,
      color: primaryColor,
      isShadow: false,
      textColor: whiteColor,
    );
  }
}
