import 'package:flutter/material.dart';

class HolidaysScreen extends StatefulWidget {
  const HolidaysScreen({super.key});

  @override
  State<HolidaysScreen> createState() => _HolidaysScreenState();
}

class _HolidaysScreenState extends State<HolidaysScreen> {
  DateTime selectedFromDate = DateTime.now();
  DateTime selectedToDate = DateTime.now();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _dateControllerFrom = TextEditingController();

  DateTime selectedDate = DateTime.now();



  Future<void> _selectDateFrom(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateControllerFrom.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }


  Future<void> _selectDateTo(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Holidays",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Divider(
            thickness: 12,
            color: Colors.black12,
          ),

          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Text(
                            "Jan 23 2024",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Tuesday",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Text(
                            "-",
                            style: TextStyle(
                              fontSize: 35,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                          // Text("Tuesday",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Text(
                            "Jan 28 2024",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Tuesday",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.delete_outline_outlined,
                        color: Colors.red,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 12,
            color: Colors.black12,
          ),

          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Text(
                            "Jan 23 2024",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Tuesday",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Text(
                            "-",
                            style: TextStyle(
                              fontSize: 35,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                          // Text("Tuesday",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Text(
                            "Jan 28 2024",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("Tuesday",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.delete_outline_outlined,
                        color: Colors.red,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 12,
            color: Colors.black12,
          ),

          SizedBox(height: MediaQuery.of(context).size.height / 10),

          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFd19b11),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 11, bottom: 11),
              child: Center(
                child: Text(
                  "Add Holidays",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Add Holidays'),
                content: Wrap(
                  children:[
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _selectDateFrom(context);
                          },
                          child: AbsorbPointer(
                            child: TextField(
                              controller: _dateControllerFrom,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                  hintText: "From",
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

                        SizedBox(height: 10,),

                        GestureDetector(
                          onTap: () {
                            _selectDateTo(context);
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
                                  hintText: "To",
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
                      ],
                    ),
                  ]
                ),

                actions: [
                  ElevatedButton(
                    onPressed: () {
                      // _genderController.text=_gender;
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
