import 'package:flutter/material.dart';
import 'package:wps/features/authetication/company_code_submisson_page.dart';
import 'package:wps/features/authetication/login_page.dart';
import 'package:wps/features/authetication/otp_screen.dart';
import 'package:wps/features/comment/comment_page.dart';
import 'package:wps/features/comment/widgets/comment_card.dart';
import 'package:wps/features/splash_screen/splash_screen.dart';
import 'package:wps/features/update_pages/update_payment_page/update_payment_page.dart';
import 'package:wps/features/update_pages/update_rate_page/update_rate_page.dart';
import 'package:wps/features/view_payment_history_page/view_payment_history_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
