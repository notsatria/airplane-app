import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/sizing.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../bonus_saldo/bonus_saldo.view.dart';

class SignUpView extends StatelessWidget {
  static const route = '/sign-up-view';
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(marginLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitleText(maxWidth),
              SizedBox(
                height: maxHeight / 10,
              ),
              _buildFullnameForm(),
              SizedBox(
                height: maxHeight / 30,
              ),
              _buildEmailAddressForm(),
              SizedBox(
                height: maxHeight / 30,
              ),
              _buildPasswordForm(),
              SizedBox(
                height: maxHeight / 30,
              ),
              _buildHobbyForm(),
              SizedBox(
                height: maxHeight / 30,
              ),
              _buildStartButton(context, maxWidth),
              SizedBox(
                height: maxHeight / 10,
              ),
              _buildTnCText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleText(double maxWidth) {
    return SizedBox(
      width: maxWidth / 1.9,
      child: Text(
        'Join us and get your next journey',
        maxLines: 2,
        style: poppinsSemiBold.copyWith(fontSize: 24),
      ),
    );
  }

  Widget _buildFullnameForm() {
    return const CustomTextField(
      label: 'Full Name',
      hint: 'Masukkan Nama Lengkap',
    );
  }

  Widget _buildEmailAddressForm() {
    return const CustomTextField(
      label: 'Email Address',
      hint: 'Masukkan Alamat Email',
    );
  }

  Widget _buildPasswordForm() {
    return CustomTextField(
      label: 'Password',
      hint: 'Password',
      isObscured: true,
      suffixIcon: IconButton(
        onPressed: () {
          debugPrint('Password');
        },
        icon: const Icon(Icons.visibility),
      ),
    );
  }

  Widget _buildHobbyForm() {
    return const CustomTextField(
      label: 'Hobby',
      hint: 'Hobby',
    );
  }

  Widget _buildStartButton(BuildContext context, double maxWidth) {
    return CustomRoundedButton(
      text: 'Get Started',
      onTap: () {
        debugPrint('Go to Main');
        Navigator.pushReplacementNamed(context, BonusSaldoView.route);
      },
      width: maxWidth,
      height: 55,
      color: primaryColor,
      isShadow: false,
      textColor: whiteColor,
    );
  }

  Widget _buildTnCText() {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'Terms and Conditions',
        style: poppinsLight.copyWith(
          fontSize: 16,
          decoration: TextDecoration.underline,
          color: greyColor,
        ),
      ),
    );
  }
}
