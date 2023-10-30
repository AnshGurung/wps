import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/features/update_pages/widgets/primary_card.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, config, themeData) {
        return PrimaryCard(
          children: [
            Row(
              children: [
                Text(
                  'Member Code :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                config.horizontalSpaceMedium(),
                Flexible(
                  flex: 2,
                  child: Text(
                    'FF',
                    //maxLines: 3,
                  ),
                ),
              ],
            ),
            config.verticalSpaceMedium(),
            Row(
              children: [
                Text(
                  'Name :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                config.horizontalSpaceMedium(),
                Flexible(
                  flex: 2,
                  child: Text(
                    'Name',
                    //maxLines: 3,
                  ),
                ),
              ],
            ),
            config.verticalSpaceMedium(),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Text(
                    'Last Date of Payment :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                config.horizontalSpaceMedium(),
                Flexible(
                  flex: 2,
                  child: Text(
                    '9999999999',
                    //maxLines: 3,
                  ),
                ),
              ],
            ),
            config.verticalSpaceMedium(),
            Row(
              children: [
                Text(
                  'Payment Upto :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                config.horizontalSpaceMedium(),
                Flexible(
                  flex: 2,
                  child: Text(
                    '300',
                    //maxLines: 3,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
