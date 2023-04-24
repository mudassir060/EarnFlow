import 'package:flutter/material.dart';
import '../../navigat.dart';
import 'Reset_password.dart';
import '../../constant/images.dart';
import '../../constant/style.dart';
import 'signup.dart';
import '../../widgets/mybutton.dart';
import '../../widgets/myspacer.dart';
import '../../widgets/mytextfield.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  TextEditingController Emailctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    var vheight = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: const [
                Image(image: AssetImage(background),),
                Positioned(
                  left: 35,
                  top: 200,
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            mytextfield(
              "Email",
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
              "Password",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Forget Password?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reset_password()),
                      );
                    },
                    child: const Text(
                      "Reset",
                      style: TextStyle(color: primaryColor),
                    ))
              ],
            ),
            myspacer(90.0, 0.0),
        
            Column(
              children: [
                mybutton(
                    width: vwidth - 80,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => navigat()),
                      );
                    },
                    name: "Login",
                    color: true,
                    textcolor: true),
                myspacer(20.0, 0.0),
                mybutton(
                    width: vwidth - 80,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signUp_page()),
                      );
                    },
                    name: "Create Account",
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
