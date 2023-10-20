import 'package:flutter/material.dart';
import 'package:wps/core/utils/asset_utils.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/core/views/widgets/custom_text_form_field.dart';
import 'package:wps/features/authetication/otp_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return BaseWidget(builder: (context, config, theme) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: config.appHorizontalPaddingLarge(),
                //vertical: config.appVerticalPadding(15),
              ),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: config.appVerticalPadding(15)),
                      child: Column(
                        children: [
                          Image.asset(
                            AssetUtils.appLogo,
                            height: config.appHeight(20),
                          ),
                          config.verticalSpaceMedium(),
                          const Text(
                            'Company Name',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    config.verticalSpaceCustom(0.4),
                    Column(
                      children: [
                        CustomTextFormField(
                          keyboardType: TextInputType.number,
                          hintText: 'Phone number',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            } else if (value.length != 10) {
                              return 'Invaild phone number';
                            }
                            return null;
                          },
                        ),
                        config.verticalSpaceMedium(),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const OtpScreen()));
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          config.appVerticalPaddingMedium()),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
