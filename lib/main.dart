import 'package:flutter/material.dart';
import 'package:messageme/firebase_options.dart';
import 'package:messageme/screens/chat_screen.dart';
import 'package:messageme/screens/signin.dart';
import 'package:messageme/screens/signup.dart';
import 'package:messageme/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message me ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:_auth.currentUser != null ? ChatScreen.screenRoute : WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => const WelcomeScreen(),
        SignInScreen.screenRoute: (context) => const SignInScreen(),
        SignUpScreen.screenRoute: (context) => const SignUpScreen(),
        ChatScreen.screenRoute: (context) => const ChatScreen(),
      },
    );
  }
}
