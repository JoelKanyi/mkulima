import 'package:flutter/material.dart';
import 'package:mkulima/src/screens/home_screen.dart';
import 'package:mkulima/src/screens/register_screen.dart';
import 'package:mkulima/src/utils/transitions/slide_route.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8),
      child: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Center(
                    child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/logo_image.png'),
                )),
                const SizedBox(height: 16),
                const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email Address",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password",
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
                            context, SlideRightRoute(page: HomeScreen()));
                      },
                      child: const Text('Sign In')),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, SlideLeftRoute(page: SignUpScreen()));
                    },
                    child: const Text("Don't have an account? Sign up",
                        style: TextStyle(fontSize: 16)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
