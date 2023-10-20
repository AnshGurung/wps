import 'package:flutter/material.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/features/authetication/company_code_submisson_page.dart';
import 'package:wps/features/comment/widgets/add_comment_dialog_box.dart';
import 'package:wps/features/comment/widgets/comment_card.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
    String? dropdownValue;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    int itemCount = 5;
    TextEditingController descriptionController = TextEditingController();
    return BaseWidget(builder: (context, config, theme) {
      return Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CompanyCodeSubmissionPage()));
            },
            child: Text('data'),
          ),
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
              config.verticalSpaceLarge(),
              Expanded(
                child: ListView.builder(
                  itemCount: itemCount,
                  itemBuilder: (context, index) {
                    return CommentCard();
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AddCommentDialogBox(
                  context: context,
                  config: config,
                  formKey: formKey,
                  dropdownValue: dropdownValue,
                  list: list,
                  descriptionController: descriptionController,
                );
              },
            );
          },
          child: const Icon(Icons.add_comment_rounded),
        ),
      );
    });
  }
}
