import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/features/update_pages/widgets/primary_button.dart';
import 'package:wps/features/update_pages/widgets/primary_card.dart';

class RateUpdate extends StatelessWidget {
  const RateUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BaseWidget(
      builder: (context, config, theme) {
        return Form(
          key: formKey,
          child: PrimaryCard(
            children: [
              TextFormField(
                maxLength: 9,
                decoration: const InputDecoration(
                  label: Text('Rate *'),
                  //hintText: 'Description *',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
              ),
              TextFormField(
                maxLength: 80,
                decoration: const InputDecoration(
                  label: Text('Description *'),
                  //hintText: 'Description *',
                ),
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
      },
    );
  }
}
