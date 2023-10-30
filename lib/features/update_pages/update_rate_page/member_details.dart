import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/features/update_pages/widgets/primary_card.dart';

class MemberDetails extends StatelessWidget {
  const MemberDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, config, theme) {
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
                Text(
                  'Mobile No. :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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
                  'Current Rate :',
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
