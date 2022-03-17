// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:charity_app/icons/my_flutter_app_icons.dart';
import 'package:charity_app/models/recipient.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class RecipientDetailPage extends StatefulWidget {
  final Recipient recipient;
  const RecipientDetailPage({Key? key, required this.recipient})
      : super(key: key);

  @override
  State<RecipientDetailPage> createState() => _RecipientDetailPageState();
}

class _RecipientDetailPageState extends State<RecipientDetailPage> {
  Recipient? recipient;

  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController idCard = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController money = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();
  File? image;
  String? fileName;

  @override
  void initState() {
    name.text = widget.recipient.name;
    address.text = widget.recipient.address;
    gender.text = widget.recipient.gender;
    idCard.text = widget.recipient.identityCard;
    phone.text = widget.recipient.phone;
    money.text = widget.recipient.money.toString();
    date.text = widget.recipient.date.toString();
    month.text = widget.recipient.month;
    year.text = widget.recipient.year.toString();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    name.dispose();
    address.dispose();
    gender.dispose();
    idCard.dispose();
    phone.dispose();
    money.dispose();
    date.dispose();
    month.dispose();
    year.dispose();
  }

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
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Edit Recipient',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B2441),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
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
                    SizedBox(height: size.height * 0.01),
                    Text(
                      'Full Name',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: name,
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.025),
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
                      'Address',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: address,
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.025),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: size.height * 0.03),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          child: Icon(
                            Icons.home_outlined,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gender',
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                              TextFormField(
                                controller: gender,
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
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: size.width * 0.025),
                                  prefixIconConstraints: BoxConstraints(
                                      maxHeight: size.height * 0.03),
                                  prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.only(right: size.width * 0.04),
                                    child: Icon(
                                      MyFlutterApp.vcard,
                                      size: 22,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Identity Card',
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                              TextFormField(
                                controller: idCard,
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
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: size.width * 0.025),
                                  prefixIconConstraints: BoxConstraints(
                                      maxHeight: size.height * 0.03),
                                  prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.only(right: size.width * 0.04),
                                    child: Icon(
                                      MyFlutterApp.vcard,
                                      size: 22,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    TextFormField(
                      controller: phone,
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.025),
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
                      controller: money,
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: size.width * 0.025),
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
                      'Birth Date',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.2,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            controller: date,
                            style: TextStyle(
                              color: Color(0xFF209FA6),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
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
                            controller: month,
                            style: TextStyle(
                              color: Color(0xFF209FA6),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
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
                            controller: year,
                            style: TextStyle(
                              color: Color(0xFF209FA6),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
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
                      height: size.height * 0.01,
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
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Joined ',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          widget.recipient.joined,
                          style: TextStyle(
                            color: Color(0xFF209FA6).withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
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
                          recipient = Recipient(
                              name.text,
                              address.text,
                              gender.text,
                              idCard.text,
                              phone.text,
                              int.parse(money.text),
                              int.parse(date.text),
                              month.text,
                              int.parse(year.text),
                              widget.recipient.joined);
                          Navigator.pop(context, recipient);
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
