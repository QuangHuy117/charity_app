// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ManageVolunteerPage extends StatefulWidget {
  const ManageVolunteerPage({ Key? key }) : super(key: key);

  @override
  State<ManageVolunteerPage> createState() => _ManageVolunteerPageState();
}

class _ManageVolunteerPageState extends State<ManageVolunteerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Text('data'),
      ),
    );
  }
}