import 'package:flutter/material.dart';


class PoliciesScreen extends StatefulWidget {
  const PoliciesScreen({Key? key}) : super(key: key);

  @override
  _PoliciesScreenState createState() => _PoliciesScreenState();
}

class _PoliciesScreenState extends State<PoliciesScreen> {
  final List<Item> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Policies'),
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

  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });
}

List<Item> generateItems() {
  return <Item>[
    Item(
      headerValue: 'Refund Policies',
      expandedValue:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at augue vel risus egestas ullamcorper. Sed eget pharetra elit, sit amet bibendum nulla. Sed aliquet justo nec est rutrum sodales.',
    ),
    Item(
      headerValue: 'Terms & Conditions',
      expandedValue:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at augue vel risus egestas ullamcorper. Sed eget pharetra elit, sit amet bibendum nulla. Sed aliquet justo nec est rutrum sodales.',
    ),
    Item(
      headerValue: 'Privacy Policies',
      expandedValue:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at augue vel risus egestas ullamcorper. Sed eget pharetra elit, sit amet bibendum nulla. Sed aliquet justo nec est rutrum sodales.',
    ),
  ];
}
