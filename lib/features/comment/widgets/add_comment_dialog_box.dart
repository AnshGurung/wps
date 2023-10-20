import 'package:flutter/material.dart';
import 'package:wps/core/utils/size_config.dart';

// ignore: must_be_immutable
class AddCommentDialogBox extends StatelessWidget {
  final BuildContext context;
  final GlobalKey<FormState> formKey;
  final SizeConfig config;
  String? dropdownValue;
  final List<String> list;
  final TextEditingController descriptionController;
  AddCommentDialogBox(
      {required this.context,
      required this.config,
      required this.formKey,
      required this.dropdownValue,
      required this.list,
      required this.descriptionController,
      super.key,});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (stfContext, stfSetState) {
      return Form(
        key: formKey,
        child: Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Container(
            padding: EdgeInsets.all(
              config.appEdgePadding(),
            ),
            //height: config.appHeight(38),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Add Comments'),
                config.verticalSpaceLarge(),
                DropdownButtonFormField(
                  hint: const Text('Select *'),
                  value: dropdownValue,
                  onChanged: (String? value) {
                    stfSetState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
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
                TextFormField(
                  controller: descriptionController,
                  maxLength: 191,
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
                config.verticalSpaceLarge(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        descriptionController.clear();
                        dropdownValue = null;
                      },
                      child: const Text('Cancel'),
                    ),
                    config.horizontalSpaceSmall(),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pop(context);
                          descriptionController.clear();
                          dropdownValue = null;
                        }
                      },
                      child: const Text('Ok'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
