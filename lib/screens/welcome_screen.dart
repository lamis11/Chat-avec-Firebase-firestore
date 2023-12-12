import 'package:flutter/material.dart';
import 'package:messageme/screens/signin.dart';
import 'package:messageme/screens/signup.dart';
import 'package:messageme/widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: Image.asset('images/logo.png'),
                  ),
                  const Text('Message Me',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFF84512),
                      ))
                ],
              ),
              const SizedBox(height: 30),
              MyButton(
                color: const Color(0xFFF84512),
                title: 'Sign in',
                onPressed: () {
                  Navigator.pushNamed(context, SignInScreen.screenRoute);
                },
              ),
              MyButton(
                color: Colors.blue,
                title: 'Sign up',
                onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.screenRoute);
                },
              ),
            ],
          ),
        ));
  }
}
