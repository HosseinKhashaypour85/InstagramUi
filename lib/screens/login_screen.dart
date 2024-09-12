import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igui/screens/first_screen.dart';
import 'package:igui/screens/bottom_nav_bar.dart';
import 'package:igui/screens/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _UsernameController = TextEditingController();
  final TextEditingController _PasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isShowUse = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _UsernameController.dispose();
    _PasswordController.dispose();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                  iconSize: 30,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo/Instagram_Logo_2016.png",
                    width: 175,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextFormField(
                      controller: _UsernameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "can not be Empty !";
                        }
                      },
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.blue,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Username , Email or phone number",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextFormField(
                      controller: _PasswordController,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.blue,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isShowUse = !isShowUse;
                            });
                          },
                          icon: isShowUse
                              ? Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.grey[500],
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey[500],
                                ),
                        ),
                      ),
                      obscureText: !isShowUse,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "can not be Empty !";
                        }
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Passowrd ? ",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(400, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BottomNavBarScreen(),));
                      }
                    },
                    child: const Text(
                      "Log in",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Divider(
                        height: 2,
                        color: Colors.grey,
                      )),
                      Text(
                        "Or",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                          child: Divider(
                        height: 2,
                        color: Colors.grey,
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        child: Icon(
                          Icons.facebook,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const BottomNavBarScreen(),
                          ));
                        },
                        child: const Text(
                          "continue as Hossein Khashaypour",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Divider(
                        height: 2,
                        color: Colors.grey,
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don\'t Have an Account ?"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FirstScreen(),
                          ));
                        },
                        child: const Text(
                          "sign Up",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
