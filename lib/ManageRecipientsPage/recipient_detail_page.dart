// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:charity_app/icons/my_flutter_app_icons.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class RecipientDetailPage extends StatefulWidget {
  const RecipientDetailPage({Key? key}) : super(key: key);

  @override
  State<RecipientDetailPage> createState() => _RecipientDetailPageState();
}

class _RecipientDetailPageState extends State<RecipientDetailPage> {
  File? image;
  String? fileName;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result == null) return;
    final path = result.files.single.path;
    fileName = path!.split('/').last;

    setState(() => image = File(path));
    if (image == null) return;
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
              height: size.height,
              width: size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: size.width * 0.04,
                          child: Icon(
                            Icons.phone,
                            size: 30,
                            color: Color(0xFF209FA6),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B2441),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: (size.width * 0.085),
                        backgroundColor: Colors.red,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(size.width * 0.085),
                          child: Image(
                            image: AssetImage('assets/images/avatar1.jpg'),
                            height: size.height * 0.1,
                            width: size.width * 0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      'Full Name',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      initialValue: 'Raphaelle Veum',
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.account_circle_outlined,
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
                      'Gender',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      initialValue: 'Female',
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            MyFlutterApp.vcard,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Identity Card',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      initialValue: '012345678910',
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            MyFlutterApp.vcard,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      initialValue: '+849022144829',
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.phone_outlined,
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
                      'Money',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      initialValue: '10000',
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.03),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.09),
                          child: Text(''),
                          // Icon(
                          // Icons.money_outlined,
                          // size: 25,
                          // color: Colors.grey,
                          //   ''
                          // ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Birth Date',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.2,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            initialValue: '22',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.2,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            initialValue: 'September',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.2,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            initialValue: '2000',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      child: Text(
                        'Capture',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        selectFile();
                      },
                      child: Row(
                        children: [
                          Container(
                            height: size.height * 0.06,
                            width: size.width * 0.2,
                            margin: EdgeInsets.only(right: size.width * 0.03),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(size.width * 0.03),
                              color: Color(0xFF209FA6),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.7,
                            child: Text(
                              fileName ?? '',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Joined ', 
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                        Text('28 Jan 2021',
                        style: TextStyle(
                          color: Color(0xFF209FA6).withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.06),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage()));
                          Navigator.pop(context);
                        },
                        child: Text(
                          ' Save Now',
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
