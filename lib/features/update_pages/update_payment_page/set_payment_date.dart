import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/features/update_pages/widgets/primary_button.dart';
import 'package:wps/features/update_pages/widgets/primary_card.dart';

class SetPaymentDate extends StatelessWidget {
  const SetPaymentDate({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> listOfYears = <String>[
      '2073',
      '2074',
      '2075',
      '2076',
      '2077',
      '2078',
      '2079',
      '2080',
      '2081'
    ];
    const List<String> listOfMonths = <String>[
      'Baishakh',
      'Jestha',
      'Ashadh',
      'Shrawan',
      'Bhadra',
      'Ashwin',
      'Kartik',
      'Mangsir',
      'Poush',
      'Magh',
      'Falgun',
      'Chaitra'
    ];
    String? yearDropdownValue;
    String? monthDropdownValue;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BaseWidget(builder: (context, config, theme) {
      return StatefulBuilder(builder: (context, stlSetState) {
        return Form(
          key: formKey,
          child: PrimaryCard(
            children: [
              DropdownButtonFormField(
                hint: const Text('Paid Upto Year'),
                value: yearDropdownValue,
                onChanged: (String? value) {
                  stlSetState(() {
                    yearDropdownValue = value!;
                  });
                },
                items:
                    listOfYears.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
              ),
              config.verticalSpaceMedium(),
              DropdownButtonFormField(
                hint: const Text('Paid Upto Month'),
                value: monthDropdownValue,
                onChanged: (String? value) {
                  stlSetState(() {
                    monthDropdownValue = value!;
                  });
                },
                items:
                    listOfMonths.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
              ),
              config.verticalSpaceMedium(),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                      text: 'Update',
                      onTap: () {
                        if (formKey.currentState!.validate()) {}
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      });
    });
  }
}
