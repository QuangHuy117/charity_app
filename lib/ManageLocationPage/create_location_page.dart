// ignore_for_file: prefer_const_constructors

import 'package:charity_app/models/location.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateLocationPage extends StatefulWidget {
  const CreateLocationPage({Key? key}) : super(key: key);

  @override
  State<CreateLocationPage> createState() => _CreateLocationPageState();
}

class _CreateLocationPageState extends State<CreateLocationPage> {

  Location? location;
  TextEditingController locationName = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController numberOfRecipient = TextEditingController();

  var format = DateFormat('dd/MM/yyyy');


  @override
  void initState() {
    date.text = format.format(DateTime.now());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    date.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            minimum: EdgeInsets.only(
              left: size.width * 0.03,
              right: size.width * 0.03,
              top: size.height * 0.05,
            ),
            child: SingleChildScrollView(
                child: SizedBox(
              height: size.height * 0.85,
              width: size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color: Color(0xFF209FA6),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Create Location',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B2441),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Location Name',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: locationName,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: abcdef',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.place_outlined,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: date,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: 10000',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.money_outlined,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Number of Recipients',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: numberOfRecipient,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        isDense: true,
                        hintText: 'Ex: 100',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.person_add_outlined,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    Container(
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: ElevatedButton(
                        onPressed: () {
                          location = Location(
                            locationName.text, 
                            date.text, 
                            int.parse(numberOfRecipient.text), 
                            'Pending');
                          Navigator.pop(context, location);
                        },
                        child: Text(
                          ' Create',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF209FA6),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(size.width * 0.04))),
                      ),
                    ),
                  ]),
            ))));
  }
}
