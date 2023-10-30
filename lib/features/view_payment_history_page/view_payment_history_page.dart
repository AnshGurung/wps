import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/features/view_payment_history_page/widgets/payment_card.dart';

class ViewPaymentHistoryPage extends StatelessWidget {
  const ViewPaymentHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat.yMMMd().format(DateTime.now());
    int itemCount = 5;
    return BaseWidget(builder: (context, config, theme) {
      return Scaffold(
        appBar: AppBar(
          title: Text('View Payment History'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: config.appEdgePadding()),
          child: Column(
            children: [
              config.verticalSpaceMedium(),
              SizedBox(
                //height: 20,
                child: Text('Total results: $itemCount'),
              ),
              config.verticalSpaceMedium(),
              Expanded(
                child: ListView.builder(
                  itemCount: itemCount,
                  itemBuilder: (context, index) {
                    return PaymentCard(
                      memberCode: 'XCANFL',
                      name: '0m shanta hotel',
                      receipt: '5051',
                      price: '5500.00',
                      date: currentDate,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
