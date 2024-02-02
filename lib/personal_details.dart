import 'package:flutter/material.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  TextEditingController _dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  String? selectedGender;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Details",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21.0, right: 21, top: 21),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mobile Number",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(
                            fontSize: 19
                        ),
                        constraints: BoxConstraints.tight(Size.fromHeight(55))
                    ),
                  ),
        
                  SizedBox(height: 20,),
                  Text(
                    "Full Name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Enter your Full Name",
                        hintStyle: TextStyle(
                            fontSize: 19
                        ),
                        constraints: BoxConstraints.tight(Size.fromHeight(55))
                    ),
                  ),
        
                  // SizedBox(height: 20,),
                  // Text(
                  //   "Last name",
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 18
                  //   ),
                  // ),
                  // SizedBox(height: 15,),
                  // TextField(
                  //   decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide.none
                  //       ),
                  //       filled: true,
                  //       fillColor: Colors.grey[100],
                  //       hintText: "Enter your last name",
                  //       hintStyle: TextStyle(
                  //           fontSize: 19
                  //       ),
                  //       constraints: BoxConstraints.tight(Size.fromHeight(55))
                  //   ),
                  // ),
        
                  SizedBox(height: 20,),
                  Text(
                    "Date of birth",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: AbsorbPointer(
                      child: TextField(
                        controller: _dateController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[100],
                          hintText: "Select your date of birth",
                          hintStyle: TextStyle(fontSize: 19),
                          suffixIcon: Icon(
                            Icons.calendar_today_outlined,
                            // color: Colors.blue,
                          ),
                            constraints: BoxConstraints.tight(Size.fromHeight(55))

                        ),
                      ),
                    ),
                  ),
        
                  SizedBox(height: 20,),
                  Text(
                    "Gander",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Male'),
                    value: 'Male',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Female'),
                    value: 'Female',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                ),
              ],
            ),

            RadioListTile<String>(
              title: Text('Other'),
              value: 'Other',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
            ),

            Padding(
              padding: const EdgeInsets.only(left: 21,right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "E-Mail",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      ),
                      Text(
                        "(Optional)",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Enter your E-mail",
                        hintStyle: TextStyle(
                            fontSize: 19
                        ),
                        constraints: BoxConstraints.tight(Size.fromHeight(55))
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFd19b11),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0,right: 10, top: 11,bottom: 11),
                      child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
        
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
