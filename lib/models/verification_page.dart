// ignore_for_file: prefer_const_literals_to_create_immutables

//wrong Otp system yet to be set

import 'package:flutter/material.dart';
import 'package:zeus_dex/utils/routes.dart';
import 'package:email_otp/email_otp.dart';

void main() {
  EmailOTP.config(
    appName: 'ZeusDex',
    otpType: OTPType.numeric,
    expiry: 3000,
    emailTheme: EmailTheme.v3,
    appEmail: 'tanuj2k26@gmail.com',
    otpLength: 6,
  );
}

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  bool changeButton = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  // void sendOTP() async {
  //   EmailAuth.sessionName = "Session";
  //   var res = await EmailAuth.sendOTP(recievermail:_emailController);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email",
                    suffixIcon: TextButton(
                      child: Text("Send OTP"),
                      onPressed: () async {
                        if (await EmailOTP.sendOTP(
                            email: _emailController.text)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("OTP has been sent")));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("OTP failed sent")));
                        }
                      },
                      // child: const Text('Send OTP'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _otpController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter OTP",
                    labelText: "OTP",
                  ),
                  
                ),
                SizedBox(
                  height: 60,
                ),
                // InkWell(
                //   onTap: () async {
                //     await Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: AnimatedContainer(
                //     duration: Duration(seconds: 1),
                //     width: changeButton ? 50 : 150,
                //     height: 50,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //       color: Colors.greenAccent,
                //       borderRadius:
                //           BorderRadius.circular(changeButton ? 50 : 8),
                //     ),
                //     child: changeButton
                //         ? Icon(
                //             Icons.done,
                //             color: Colors.white,
                //           )
                //         : Text(
                //             "Verify OTP",
                //             style: TextStyle(
                //                 color: Colors.white,
                //                 fontWeight: FontWeight.bold,
                //                 fontSize: 18),
                //           ),
                //   ),
                // ),
                // TextFormField(controller: _otpController),
                ElevatedButton(
                  // onPressed: () => EmailOTP.verifyOTP(otp: _otpController.text),
                  onPressed: () async {
                    if (EmailOTP.verifyOTP(otp: _otpController.text)) {
                      await Navigator.pushNamed(context, MyRoutes.homeRoute);
                    } else {
                      SnackBar(content: Text("Wrong OTP"));
                    }
                  },
                  child: const Text('Verify OTP'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
