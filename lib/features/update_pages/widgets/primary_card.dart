import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';

class PrimaryCard extends StatelessWidget {
  List<Widget> children;
  PrimaryCard({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, config, theme) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: config.appVerticalPaddingMedium(),
            horizontal: config.appHorizontalPaddingLarge(),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!.withOpacity(0.25),
                spreadRadius: 2.5,
                blurRadius: 6,
                offset: Offset(4, 4),
              )
            ],
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: children,
          ),
        );
      },
    );
  }
}
