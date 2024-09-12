import 'package:flutter/material.dart';
import 'package:igui/screens/login_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: DropdownButton<String>(
                hint: Text("English(USA)"),
                items: <String>[
                  'English(USA)',
                  'English(British)',
                  'France',
                  'Persian(Iran)'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            Image.asset(
              "assets/images/logo/Instagram_Logo_2016.png",
              width: 175,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(7.5),
              ),
              child: Container(
                // margin: EdgeInsets.all(5),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.facebook,
                        size: 20,
                      ),
                    ),
                    Text(
                      "Login with Facebook",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "roboto"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                  ),
                  Text(
                    "or",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
              },
              child: Text("Sign up with email or phone number"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                Text("Already have An account ?"),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
                  },
                  child: Text("Log in"),
                ),
                // Divider(color: Colors.grey, height: 2,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
