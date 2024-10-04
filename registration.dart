// import 'package:firebase/src/screens/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text, password: password.text);
    // Get.offAll(const Wrapper());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.yellow,s
        body: LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.15,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.07,
                  right: constraints.maxWidth * 0.05,
                  bottom: constraints.maxHeight * 0.05),
              child: Image.asset('assets/logo/Logo1.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.07,
                  right: constraints.maxWidth * 0.05,
                  bottom: constraints.maxHeight * 0.02),
              child: Text(
                'Full Name',
                style: TextStyle(
                    fontSize: constraints.maxWidth * 0.05,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth * 0.07,
                // vertical: constraints.maxWidth * 0.01
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.07,
                  right: constraints.maxWidth * 0.05,
                  bottom: constraints.maxHeight * 0.02,
                  top: constraints.maxHeight * 0.02),
              child: Text(
                'Email',
                style: TextStyle(
                    fontSize: constraints.maxWidth * 0.05,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth * 0.07,
                // vertical: constraints.maxWidth * 0.01
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.07,
                  right: constraints.maxWidth * 0.05,
                  bottom: constraints.maxHeight * 0.02,
                  top: constraints.maxHeight * 0.02),
              child: Text(
                'Password',
                style: TextStyle(
                    fontSize: constraints.maxWidth * 0.05,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth * 0.07,
                // vertical: constraints.maxWidth * 0.
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: constraints.maxHeight * 0.05),
                height: constraints.maxHeight * 0.08,
                width: constraints.maxWidth * 0.86,
                decoration: BoxDecoration(
                    color: const Color(0xffAA14F0),
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                    child: Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: constraints.maxWidth * 0.04),
                )),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',
                    style: TextStyle(
                        fontSize: constraints.maxWidth * 0.04,
                        fontWeight: FontWeight.w400)),
                SizedBox(
                  width: constraints.maxWidth * 0.02,
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: constraints.maxWidth * 0.04,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      );
    }));
  }
}
