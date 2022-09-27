// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {

  final firebaseAuth = FirebaseAuth.instance;
  final passController = TextEditingController();
  final emailController = TextEditingController();

  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {



    // firebaseAuth
    //     .userChanges()
    //     .listen((User? user) {
    //   if (user == null) {
    //     print('User is currently signed out!');
    //   } else {
    //     print('User is signed in!');
    //   }
    // });

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/register.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: Colors.grey[900],
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.keyboard_arrow_left),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 40, top: 50),
              child: Text(
                'Register \nAccount',
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 33,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.26,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
/*                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'Name',
                          hintStyle: GoogleFonts.ubuntu(
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    )*/
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: getDecoration('Email'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: passController,
                      obscureText: true,
                      decoration: getDecoration('Password'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    /*TextField(
                      onChanged: (value) {
                        pass = value;
                      },
                      obscureText: true,
                      decoration: getDecoration('Confirm Password'),
                    ),*/
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign Up',
                          style: GoogleFonts.ubuntu(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () async {

                              print(passController.text);
                              print(emailController.text);
                              try {
                                await firebaseAuth.createUserWithEmailAndPassword(
                                    email: emailController.text, password: passController.text).then((value){
                                  print('user');

                                  print(value.user);
                                }).onError((error, stackTrace) {
                                  print('error');
                                  print(error);
                                });


                              } catch (e) {
                                print('catch');

                                print(e);
                              }
                              // Navigator.pushNamed(context, '/sign_in');
                              /*try {
                                final credential = await firebaseAuth.createUserWithEmailAndPassword(
                                  email: email,
                                  password: pass,
                                );
                                print(credential);
                                // Navigator.pushNamed(context, '/home');
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'email-already-in-use') {
                                  print('The account already exists for that email.');
                                }
                              } catch (e) {
                                print(e);
                              }*/
                            },
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Already have an account?',
                          style: GoogleFonts.ubuntu(
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                            onPressed: () async {},
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign_in');
                              },
                              child: Text(
                                'Sign In',
                                style: GoogleFonts.ubuntu(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }




}

InputDecoration getDecoration(String fieldName) {
  final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey.shade50));
return InputDecoration(

      focusedBorder: border,
      enabledBorder: border,
      hintText: fieldName,
      fillColor: Colors.white.withOpacity(0.2),
      filled: true,
      hintStyle: GoogleFonts.ubuntu(
        color: Colors.white,
      ),
      border: border
  );
}
