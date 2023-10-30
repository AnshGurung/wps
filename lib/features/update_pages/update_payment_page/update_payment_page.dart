import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/features/update_pages/update_payment_page/payment_details.dart';
import 'package:wps/features/update_pages/update_payment_page/set_payment_date.dart';
import 'package:wps/features/update_pages/widgets/primary_card.dart';

class UpdatePaymentPage extends StatelessWidget {
  const UpdatePaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, config, themeData) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Update Payment'),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(config.appHorizontalPaddingLarge()),
                child: Column(
                  children: [
                    const PaymentDetails(),
                    config.verticalSpaceMedium(),
                    const SetPaymentDate(),
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
