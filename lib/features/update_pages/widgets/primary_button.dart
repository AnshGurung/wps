import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  String text;
  void Function() onTap;
  PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, config, theme) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(
            vertical: config.appVerticalPadding(1.5),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    });
  }
}
