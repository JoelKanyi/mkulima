import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mkulima/src/screens/login_screen.dart';
import 'package:mkulima/utils/transitions/slide_route.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Center(
                    child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/logo_image.png'),
                )),
                const SizedBox(height: 16),
                const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter full name",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter email address",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter phone number",
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter password",
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  padding: EdgeInsets.all(8),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context, SlideRightRoute(page: SignInScreen()));
                      },
                      child: const Text('Sign Up')),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, SlideLeftRoute(page: SignInScreen()));
                    },
                    child: const Text("Already have an account? Sign In",
                        style: TextStyle(fontSize: 16)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
