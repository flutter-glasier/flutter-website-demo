import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/theme_helper.dart';
import 'package:flutter_web_dashboard/widgets/CommonTextfield.dart';
import 'package:flutter_web_dashboard/widgets/custom_widget.dart';

import '../home/widgets/footer.dart';

class ServicesScreen extends StatefulWidget {
  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionControlle = TextEditingController();

  final FocusNode _titleFocus = FocusNode();

  final FocusNode _descriptionFocus = FocusNode();
  List<String> dummySubService = [
    'Sub-service-1',
    'Sub-service-2',
    'Sub-service-3',
    'Sub-service-4',
    'Sub-service-5',
    'Sub-service-6',
    'Sub-service-7',
    'Sub-service-8',
    'Sub-service-9',
    'Sub-service-10',
  ];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: _width / 15, vertical: _height / 20),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Our Services',
                style: appTheme!.text35BoldBlack,
              ),
              SizedBox(
                height: _height / 20,
              ),
              serviceItem('imagePath', 'label'),
              Divider(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }

  Widget serviceItem(String imagePath, String label) => Container(
        child: Column(
          children: [
            Card(
              shadowColor: Colors.grey,
              elevation: 1,
              child: ExpansionTile(
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/icons/app-development.png',
                    height: 30,
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                ),
                title: Text('Mobile App development'),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.symmetric(vertical: 20),
                children: dummySubService
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: InkWell(
                              onTap: () {
                                showEnquiryForm(context);
                              },
                              child: Text(e)),
                        ))
                    .toList(),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15),
              shadowColor: Colors.grey,
              elevation: 1,
              child: ExpansionTile(
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/icons/game-development.png',
                    height: 30,
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                ),
                title: Text('Web development'),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.symmetric(vertical: 20),
                children: dummySubService
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15),
              shadowColor: Colors.grey,
              elevation: 1,
              child: ExpansionTile(
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/icons/graphic-design.png',
                    height: 30,
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                ),
                title: Text('Graphic Design'),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.symmetric(vertical: 20),
                children: dummySubService
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15),
              shadowColor: Colors.grey,
              elevation: 1,
              child: ExpansionTile(
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/icons/game-development.png',
                    height: 30,
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                ),
                title: Text('Game Development'),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.symmetric(vertical: 20),
                children: dummySubService
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
            Card(
              shadowColor: Colors.grey,
              elevation: 1,
              child: ExpansionTile(
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/icons/app-development.png',
                    height: 30,
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                ),
                title: Text('Mobile App development'),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.symmetric(vertical: 20),
                children: dummySubService
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15),
              shadowColor: Colors.grey,
              elevation: 1,
              child: ExpansionTile(
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/icons/game-development.png',
                    height: 30,
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                ),
                title: Text('Web development'),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.symmetric(vertical: 20),
                children: dummySubService
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15),
              shadowColor: Colors.grey,
              elevation: 1,
              child: ExpansionTile(
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/icons/graphic-design.png',
                    height: 30,
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                ),
                title: Text('Graphic Design'),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.symmetric(vertical: 20),
                children: dummySubService
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15),
              shadowColor: Colors.grey,
              elevation: 1,
              child: ExpansionTile(
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/icons/game-development.png',
                    height: 30,
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                ),
                title: Text('Game Development'),
                expandedAlignment: Alignment.centerLeft,
                childrenPadding: EdgeInsets.symmetric(vertical: 20),
                children: dummySubService
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(e),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      );

  showEnquiryForm(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: enquiryForm(),
          );
        });
  }

  Widget enquiryForm() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Fill-up the enquiry',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                questionTextField(),
                descriptionTextField(),
                uploadDocument(),
                CustomWidgets().getButton(() {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(context);
                  }
                }, 'Submit',
                    buttonWidth: MediaQuery.of(context).size.width * 0.35)
              ],
            )),
      );

  Widget questionTextField() => CommonTextfield(
        textFieldWidth: MediaQuery.of(context).size.width * 0.35,
        textFieldHeight: MediaQuery.of(context).size.height * 0.08,
        label: 'Enter your question',
        focusNode: _titleFocus,
        validation: (v) {
          if (v.isEmpty) {
            return 'This field is required,can\'t be empty';
          }
        },
        textOption: TextFieldOption(
            inputController: _titleController, hintText: 'What\'s problem ?'),
      );

  Widget descriptionTextField() => CommonTextfield(
        textFieldWidth: MediaQuery.of(context).size.width * 0.35,
        textFieldHeight: MediaQuery.of(context).size.height * 0.15,
        label: 'Enter your description',
        focusNode: _descriptionFocus,
        textOption: TextFieldOption(
            maxLine: 5,
            inputController: _descriptionControlle,
            hintText: 'Describe your query'),
      );
  Widget uploadDocument() => Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_upload_outlined,
              color: Colors.grey.withOpacity(0.4),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Attach document',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      );
}
