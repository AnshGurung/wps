import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';

class PaymentCard extends StatelessWidget {
  final String memberCode;
  final String name;
  final String receipt;
  final String date;
  final String price;
  PaymentCard({
    super.key,
    required this.memberCode,
    required this.name,
    required this.date,
    required this.receipt,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, config, theme) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: config.appEdgePadding(),
          vertical: config.appVerticalPaddingMedium(),
        ),
        margin: EdgeInsets.only(bottom: config.appVerticalPaddingMedium()),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400]!.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 6,
              offset: Offset(4, 4),
            )
          ],
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: config.appWidth(18),
              child: Text(
                memberCode,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            config.horizontalSpaceSmall(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  config.verticalSpaceSmall(),
                  Text(
                    'Receipt: $receipt',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  config.verticalSpaceSmall(),
                  Text(
                    'Date: $date',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            config.horizontalSpaceSmall(),
            SizedBox(
              width: config.appWidth(10),
              child: Text(
                price,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
