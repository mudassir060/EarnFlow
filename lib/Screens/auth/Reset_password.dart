// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../../constant/images.dart';
import 'sign_in.dart';
import '../../widgets/mybutton.dart';
import '../../widgets/myspacer.dart';
import '../../widgets/mytextfield.dart';

class Reset_password extends StatefulWidget {
  const Reset_password({super.key});

  @override
  State<Reset_password> createState() => _Reset_passwordState();
}

class _Reset_passwordState extends State<Reset_password> {
  TextEditingController Emailctrl = TextEditingController();
  TextEditingController phonectrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        body: Form(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: const [
                Image(image: AssetImage(background)),
                Positioned(
                  left: 40,
                  top: 220,
                  child: Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            mytextfield(
              "Registered Email",
              Emailctrl,
              vwidth,
              Email,
              null,
              keyboardType: TextInputType.emailAddress,
              valid: (value) {
                if (value.isEmpty) {
                  return "Email is required";
                } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                    .hasMatch(value)) {
                  return "Please enter a valid email address";
                }
                return null;
              },
            ),
            mytextfield(
              "Registered Phone",
              phonectrl,
              vwidth,
              phone,
              null,
              keyboardType: TextInputType.phone,
              valid: (value) {
                if (value.isEmpty) {
                  return "Phone number is required";
                } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                  return "Please enter a valid phone number";
                }
                return null;
              },
            ),
        
            mytextfield(
              "New Password",
              passwordctrl,
              vwidth,
              password,
              password_icon,
              keyboardType: TextInputType.visiblePassword,
              valid: (value) {
                if (value.isEmpty) {
                  return "Password is required";
                } else if (value.length < 6) {
                  return "Password should be at least 6 characters";
                }
                return null;
              },
            ),
            //myspacer(0.0, 30.0),
            myspacer(100.0, 0.0),
            Column(
              children: [
                mybutton(
                    width: vwidth - 80,
                    function: () {},
                    name: "Update Password",
                    color: true,
                    textcolor: true),
                myspacer(20.0, 0.0),
                mybutton(
                    width: vwidth - 80,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sign_in()),
                      );
                    },
                    name: "Back",
                    color: false,
                    textcolor: false),
              ],
            ),
          ]),
              ),
            ),
        ));
  }
}
