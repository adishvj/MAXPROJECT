import 'package:flutter/material.dart';

import '../Services/authentication.dart';
import '../Widgets/Textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FirebaseServices obj1 = FirebaseServices();
  TextEditingController emailController = TextEditingController();
  TextEditingController PaswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController ConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(children: [
            Image.asset(
              'assets/images/login.png',
              scale: 4,
            ),
            Text(
              'Sign Up',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Expanded(
              child: Container(
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        children: [
                          changableText(
                              label: "Enter Name",
                              TextController: nameController),
                          SizedBox(
                            height: 20,
                          ),
                          changableText(
                              label: "Enter Email",
                              TextController: emailController),
                          SizedBox(
                            height: 20,
                          ),
                          changableText(
                              label: "Enter password",
                              TextController: PaswordController),
                          SizedBox(
                            height: 20,
                          ),
                          changableText(
                              label: "Confirm password",
                              TextController: ConfirmController),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              obj1.registration(
                                  email: emailController.text.trim(),
                                  password: PaswordController.text,
                                  context: context);
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow[800]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
