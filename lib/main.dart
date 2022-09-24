import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:greeting_app/pages/forgot_pass.dart';
import 'package:greeting_app/pages/home.dart';
import 'package:greeting_app/pages/dept_greet.dart';
import 'package:greeting_app/pages/newpass.dart';
import 'package:greeting_app/pages/register.dart';
import 'package:greeting_app/pages/registration_form.dart';
import 'package:greeting_app/pages/sign_in.dart';
import 'package:greeting_app/pages/verification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
        appId: '1:448618578101:web:0b650370bb29e29cac3efc',
        messagingSenderId: '448618578101',
        projectId: 'react-native-firebase-testing',
        authDomain: 'react-native-firebase-testing.firebaseapp.com',
        databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
        storageBucket: 'react-native-firebase-testing.appspot.com',
        measurementId: 'G-F79DJ0VFGS',
      ),
    );
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/sign_in': (context) => const Sign_In(),
      '/register': (context) => const MyRegister(),
      '/registration_form': (context) => const RegistrationForm(),
      '/dept_greet': (context) => const Department_Greet(),
      '/forgot_pass': (context) => const ForgotPass(),
      '/verification': (context) => const Otp_Verify(),
      '/newpass': (context) => const New_Pass(),
    },
  ));
}
