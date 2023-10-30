import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/features/update_pages/update_rate_page/member_details.dart';
import 'package:wps/features/update_pages/update_rate_page/rate_update.dart';
import 'package:wps/features/update_pages/widgets/primary_button.dart';
import 'package:wps/features/update_pages/widgets/primary_card.dart';

class UpdateRatePage extends StatelessWidget {
  const UpdateRatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, config, theme) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Update Rate'),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(config.appHorizontalPaddingLarge()),
                child: Column(
                  children: [
                    const MemberDetails(),
                    config.verticalSpaceMedium(),
                    const RateUpdate(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
