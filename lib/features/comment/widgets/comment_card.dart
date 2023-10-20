import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wps/core/views/widgets/base_widget.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, config, theme) {
      return Container(
        margin: EdgeInsets.only(bottom: config.appVerticalPaddingMedium()),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400]!.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(4, 4),
            )
          ],
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: config.appEdgePadding(),
            vertical: config.appVerticalPaddingSmall(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discontinue Service',
                style: TextStyle(
                  //color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              config.verticalSpaceSmall(),
              Text('data'),
              config.verticalSpaceSmall(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('By: One Staging'),
                      config.verticalSpaceSmall(),
                      Row(
                        children: [
                          Text(
                            DateFormat.yMMMd().format(DateTime.now()),
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                          config.horizontalSpaceSmall(),
                          Text(
                            DateFormat.jm().format(DateTime.now()),
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
