import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  final List<Item> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _buildPanel(),
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                item.headerValue,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({required this.expandedValue, required this.headerValue, this.isExpanded = false});
}

List<Item> generateItems() {
  List<String> questions = [
    'What is the purpose of this dairy app?',
    'How can I add new entries to my dairy?',
    'Can I attach images to my dairy entries?',
    'Is it possible to sync my dairy across multiple devices?',
    'How can I delete an entry from my dairy?',
    'Can I set reminders for my dairy entries?',
    'What is the maximum length of a dairy entry?',
    'Is there a search feature available in the dairy app?',
    'How can I customize the appearance of my dairy?',
    'Are my dairy entries secure and private?'
  ];

  List<String> answers = [
    'The purpose of this dairy app is to provide a digital platform for users to record their daily thoughts, experiences, and events.',
    'You can add new entries to your dairy by navigating to the "Add Entry" section and providing the necessary details such as date, title, and content.',
    'Yes, you can attach images to your dairy entries. There is an option to upload images from your device gallery.',
    'Yes, you can sync your dairy across multiple devices by logging in with the same account credentials. Your data will be securely stored in the cloud.',
    'To delete an entry from your dairy, simply navigate to the entry you want to delete and tap on the delete button.',
    'Yes, you can set reminders for your dairy entries. There is an option to set reminders while creating or editing an entry.',
    'The maximum length of a dairy entry varies depending on the app settings, but typically it allows for a significant amount of text.',
    'Yes, there is a search feature available in the dairy app. You can search for specific keywords or phrases to find relevant entries.',
    'You can customize the appearance of your dairy by changing the theme, font style, and color scheme from the settings menu.',
    'Yes, your dairy entries are secure and private. The app uses encryption and authentication mechanisms to protect your data.'
  ];

  List<Item> items = [];

  for (int i = 0; i < questions.length; i++) {
    items.add(Item(
      headerValue: questions[i],
      expandedValue: answers[i],
    ));
  }

  return items;
}
