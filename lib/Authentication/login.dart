import 'package:flutter/material.dart';

import '../Services/authentication.dart';
import '../Widgets/Textfield.dart';
import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;
  TextEditingController _password = TextEditingController();
  FirebaseServices obj1 = FirebaseServices();
  @override
  void dispose() {
    _password.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  String _key = "key";
  String _value = "value";

  @override
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151515),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage(
                        "assets/images/login.png",
                      ),
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("login",
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  SizedBox(
                    height: 20,
                  ),
                  changableText(
                      label: "Enter User Name", TextController: _email),
                  SizedBox(height: 20),
                  TextField(
                    controller: _password,
                    obscureText: !_isPasswordVisible,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Color(0xFF232327),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white54,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            print("forgot pasword");
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 500,
                    child: ElevatedButton(
                      onPressed: () async {
                        obj1.signIn(
                            email: _email.text,
                            password: _password.text,
                            context: context);
                        // Handle the login logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[800], // Button color
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have Account ?",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ));
                            print("Sign UP");
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.yellow[800],
                            ),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.orange[800],
                        ),
                      ),
                      Text(
                        '  welcomee  ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.orange[800],
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
