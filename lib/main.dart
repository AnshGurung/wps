import 'package:flutter/material.dart';
import 'package:wps/features/authetication/company_code_submisson_page.dart';
import 'package:wps/features/comment/comment_page.dart';
import 'package:wps/features/comment/widgets/comment_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommentPage(),
    );
  }
}
