import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'adminsetting.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  bool isClicked = false;
  final TextEditingController farmername = new TextEditingController();
  final TextEditingController farmerID = new TextEditingController();
  final TextEditingController farmeremail = new TextEditingController();
  final TextEditingController farmerphone = new TextEditingController();
  final TextEditingController farmerAPhone = new TextEditingController();
  final TextEditingController farmerAddress = new TextEditingController();
  final TextEditingController farmerTAddress = new TextEditingController();
  final TextEditingController farmerlonglat = new TextEditingController();
  final TextEditingController farmercapacity = new TextEditingController();
  final TextEditingController farmermigrationlocation =
      new TextEditingController();
  final TextEditingController farmerbeehive = new TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   dbRef = FirebaseDatabase.instance.ref().child("Farmers");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminSetting(),
                  ),
                );
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Data Collection of Farmer"),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  child: Text("Add Data"),
                ),
                SizedBox(
                  height: 8,
                ),
                Visibility(
                  visible: isClicked,
                  child: Container(
                    child: Column(
                      children: [
                        TextFormField(
                          //keyboardType: TextInputType.number,
                          controller: farmerID,
                          decoration: InputDecoration(
                            hintText: "Farmer ID",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          controller: farmername,
                          decoration: InputDecoration(
                            hintText: "Enter Farmer name",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          controller: farmeremail,
                          //keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "E-mail(Optional)",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          //keyboardType: TextInputType.phone,
                          controller: farmerphone,
                          decoration: InputDecoration(
                            hintText: "Phone number",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          //keyboardType: TextInputType.phone,
                          controller: farmerAPhone,
                          decoration: InputDecoration(
                            hintText: "Additional Phone number(Optional)",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          //keyboardType: TextInputType.streetAddress,
                          controller: farmerAddress,
                          decoration: InputDecoration(
                            hintText: "Permanent Address",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          //keyboardType: TextInputType.streetAddress,
                          controller: farmerTAddress,
                          decoration: InputDecoration(
                            hintText: "Temporary Address",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          //keyboardType: TextInputType.number,
                          controller: farmerlonglat,
                          decoration: InputDecoration(
                            hintText: "Long-Lat",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          //keyboardType: TextInputType.number,
                          controller: farmercapacity,
                          decoration: InputDecoration(
                            hintText:
                                "Capacity quantity of Production per interval",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          //keyboardType: TextInputType.text,
                          controller: farmermigrationlocation,
                          decoration: InputDecoration(
                            hintText: "Possible Migration Location",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          //keyboardType: TextInputType.number,
                          controller: farmerbeehive,
                          decoration: InputDecoration(
                            hintText: "Number of Beehive",
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: new BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: MaterialButton(
                            onPressed: () async {
                              // Map<String, String> data = {
                              //   'farmerID': farmerID.text,
                              //   'farmername': farmername.text,
                              //   'farmeremail': farmeremail.text,
                              //   'farmerphone': farmerphone.text,
                              //   'farmerAPhone': farmerAPhone.text,
                              //   'farmerAddress': farmerAddress.text,
                              //   'farmerTAddress': farmerTAddress.text,
                              //   'farmerfarmerlonglat': farmerlonglat.text,
                              //   'farmercapacity': farmercapacity.text,
                              //   'farmermigrationlocation':
                              //       farmermigrationlocation.text,
                              //   'farmerbeehive': farmerbeehive.text,
                              // };
                              // await firestore
                              //     .collection("Farmer")
                              //     .doc("11")
                              //     .set(data);
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
