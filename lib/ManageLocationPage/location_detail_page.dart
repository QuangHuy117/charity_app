// ignore_for_file: prefer_const_constructors

import 'package:charity_app/models/location.dart';
import 'package:flutter/material.dart';

class LocationDetailPage extends StatefulWidget {
  final Location location;
  const LocationDetailPage({Key? key, required this.location})
      : super(key: key);

  @override
  State<LocationDetailPage> createState() => _LocationDetailPageState();
}

class _LocationDetailPageState extends State<LocationDetailPage> {
  Location? location;
  TextEditingController locationName = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController numberOfRecipient = TextEditingController();

  @override
  void initState() {
    locationName.text = widget.location.location;
    date.text = widget.location.date;
    numberOfRecipient.text = widget.location.numPeople.toString();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    locationName.dispose();
    date.dispose();
    numberOfRecipient.dispose();
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
                        'Edit Location',
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
                        color: Color(0xFF209FA6),
                        fontWeight: FontWeight.bold,
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
                        color: Color(0xFF209FA6),
                        fontWeight: FontWeight.bold,
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
                        color: Color(0xFF209FA6),
                        fontWeight: FontWeight.bold,
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
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Status',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.width * 0.01),
                      height: size.height * 0.06,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.shade400, width: 1),
                          borderRadius:
                              BorderRadius.circular(size.width * 0.02)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.02),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          elevation: 1,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 35,
                          isExpanded: true,
                          style: TextStyle(
                            color: Color(0xFF209FA6),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          value: widget.location.status,
                          onChanged: (newValue) {
                            setState(() {
                              widget.location.status = newValue!;
                            });
                          },
                          items: ['Pending', 'Processing', 'Done']
                              .map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
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
                              widget.location.status);
                          Navigator.pop(context, location);
                        },
                        child: Text(
                          ' Save',
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
