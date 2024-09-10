// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:zeus_dex/utils/routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String name = "";
  bool changeButton = false;
  final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  moveToVerify(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.verificationRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white, // Your screen background color
          ),
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                    Image.network(
                      "https://i.pinimg.com/474x/f7/27/10/f72710369ed3e8a6e5406e29c0c1b455.jpg",
                      height: 350,
                      width: 375,
                      fit: BoxFit.fill,
                    ),
                    Text(
                      "Welcome ", //$name",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      child: Column(
                        children: [
                          TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Enter Email",
                                labelText: "Email",
                              ),
                              validator: (value) {
                                if ((value!.isEmpty)) {
                                  return ("Email cannot be empty");
                                } else if (EmailValidator.validate(value)) {
                                  return (null);
                                } else {
                                  return ("Invalid Email");
                                }
                              }),
                          TextFormField(
                            obscureText: true, //to hide the password
                            // controller: _passController,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                            ),
                            validator: (value) {
                              if ((value!.isEmpty)) {
                                return ("Password cannot be empty");
                              } else if (value.length < 6) {
                                return ("Password length should be atleast 6");
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          InkWell(
                            onTap: () => moveToVerify(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changeButton ? 50 : 150,
                              height: 50,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Register",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 50 : 8),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              title: Text(
                "New here ? Register Below",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ), // You can add title here
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
