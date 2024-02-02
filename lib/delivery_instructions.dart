import 'package:flutter/material.dart';

class DeliveryInstructions extends StatefulWidget {
  const DeliveryInstructions({super.key});

  @override
  State<DeliveryInstructions> createState() => _DeliveryInstructionsState();
}

class _DeliveryInstructionsState extends State<DeliveryInstructions> {
  String? selectedDeliveryOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Delivery Instructions",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Delivery Option",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 15),
            RadioListTile<String>(
              title: Text('Ring Bell'),
              value: 'Ring Bell',
              groupValue: selectedDeliveryOption,
              onChanged: (value) {
                setState(() {
                  selectedDeliveryOption = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Deliver at Doorstep'),
              value: 'Deliver at Doorstep',
              groupValue: selectedDeliveryOption,
              onChanged: (value) {
                setState(() {
                  selectedDeliveryOption = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Deliver at Security'),
              value: 'Deliver at Security',
              groupValue: selectedDeliveryOption,
              onChanged: (value) {
                setState(() {
                  selectedDeliveryOption = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Drop the Packets in Bag/Basket'),
              value: 'Drop the Packets in Bag/Basket',
              groupValue: selectedDeliveryOption,
              onChanged: (value) {
                setState(() {
                  selectedDeliveryOption = value;
                });
              },
            ),

            Spacer(),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFd19b11),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10, top: 12,bottom: 12),
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
