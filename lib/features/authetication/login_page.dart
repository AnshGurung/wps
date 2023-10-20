import 'package:flutter/material.dart';
import 'package:wps/core/utils/asset_utils.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/core/views/widgets/custom_text_form_field.dart';
import 'package:wps/features/authetication/otp_screen.dart';
import 'package:wps/features/authetication/widgets/submit_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return BaseWidget(builder: (context, config, theme) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: config.appWidth(110),
                        height: config.appHeight(50),
                        child: Image.asset(
                          AssetUtils.getImage(
                            'circles.png',
                          ),
                          fit: BoxFit.fill,
                          //width: config.appWidth(200),
                          //height: config.appHeight(20),
                        ),
                      ),
                      //config.verticalSpaceMedium(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: config.appHorizontalPaddingLarge()),
                        child: Column(
                          children: [
                            config.verticalSpaceCustom(0.4),
                            const Text(
                              'Company Name',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  config.verticalSpaceCustom(0.2),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: config.appHorizontalPaddingLarge()),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          keyboardType: TextInputType.number,
                          hintText: 'Phone number',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            } else if (value.length != 10) {
                              return 'Invalid phone number';
                            }
                            return null;
                          },
                        ),
                        config.verticalSpaceMedium(),
                        SubmitButton(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OtpScreen(),
                                ),
                              );
                            }
                          },
                          text: 'LOGIN',
                        ),
                        config.verticalSpaceExtraLarge(),
                        const Text(
                          'Version: 2.0.1',
                          style: TextStyle(
                            color: Color(0xff9F9F9F),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
