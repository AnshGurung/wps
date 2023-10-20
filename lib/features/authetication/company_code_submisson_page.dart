import 'package:flutter/material.dart';
import 'package:wps/core/utils/asset_utils.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/core/views/widgets/custom_text_form_field.dart';
import 'package:wps/features/authetication/login_page.dart';

class CompanyCodeSubmissionPage extends StatelessWidget {
  const CompanyCodeSubmissionPage({super.key});

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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: Image.asset(
                              AssetUtils.appLogo,
                              height: config.appHeight(20),
                            ),
                          ),
                          config.verticalSpaceMedium(),
                          const Text(
                            'Hello!',
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
                          hintText: 'Company Code',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
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
                                    print('valid');
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
                                      'SUBMIT',
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
