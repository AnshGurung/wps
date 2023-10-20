import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:wps/core/views/widgets/base_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, config, theme) {
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: config.appHorizontalPaddingLarge()),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Verification Code',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                config.verticalSpaceCustom(0.15),
                const Text(
                  'Please enter the OTP sent on your registred mobile number',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                config.verticalSpaceCustom(0.15),
                OtpTextField(
                  fieldWidth: 50,
                  showFieldAsBox: true,
                  margin: const EdgeInsets.only(right: 20),
                  keyboardType: TextInputType.number,
                  numberOfFields: 4,
                  autoFocus: true,
                  enabledBorderColor: Colors.blue,
                  focusedBorderColor: Colors.blue,
                  //onSubmit: ,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
