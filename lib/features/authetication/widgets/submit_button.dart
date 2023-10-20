import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';

// ignore: must_be_immutable
class SubmitButton extends StatelessWidget {
  void Function() onTap;
  String text;
  SubmitButton({
    required this.onTap,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, config, theme) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          // padding: EdgeInsets.symmetric(
          //   vertical: config.appVerticalPaddingMedium(),
          //   horizontal:
          //       config.appHorizontalPaddingLarge(),
          // ),
          decoration: const BoxDecoration(
            color: Color(0xff004D73),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Stack(
            children: [
              const Positioned(
                right: -15,
                top: -30,
                child: CircleAvatar(
                  backgroundColor: Color(0xff006090),
                  radius: 35,
                ),
              ),
              const Positioned(
                left: -10,
                bottom: -40,
                child: CircleAvatar(
                  backgroundColor: Color(0xff005883),
                  radius: 40,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: config.appVerticalPaddingMedium(),
                  horizontal: config.appHorizontalPaddingLarge(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Icon(
                    //   Icons.arrow_forward_rounded,
                    //   color: Colors.white,
                    // )
                  ],
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: config.appVerticalPadding(3.1),
                      horizontal: config.appHorizontalPaddingLarge(),
                    ),
                    //color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
