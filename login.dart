import 'package:firebase/src/screens/forgot.dart';
import 'package:firebase/src/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;

  signIn() async {
    setState(() {
      isLoading = true;
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error msg", e.code);
    } catch (e) {
      Get.snackbar('Error msg', e.toString());
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            appBar: AppBar(
              title: const Text('Login'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                      controller: email,
                      decoration: const InputDecoration(
                        hintText: 'Enter Email',
                      )),
                  TextField(
                      controller: password,
                      decoration: const InputDecoration(
                        hintText: 'Enter Password',
                      )),
                  ElevatedButton(onPressed: signIn, child: const Text('Login')),
                  ElevatedButton(
                      onPressed: (() => Get.to(const Signup())),
                      child: const Text('Register Now')),
                  ElevatedButton(
                      onPressed: (() => Get.to(const Forgot())),
                      child: const Text('Forgot Password?'))
                ],
              ),
            ),
          );
  }
}
