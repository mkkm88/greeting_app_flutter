import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.grey[600],
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_circle_left_outlined),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
            'Forgot Password',
        style: GoogleFonts.ubuntu(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body:  Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          children: <Widget>[
            Text(
                'Please enter your mobile number and e-mail to receive verifcation code',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                    'Enter your contact info',
                style: GoogleFonts.ubuntu(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 22
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Mobile No',
                  style: GoogleFonts.ubuntu(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: 'enter your mobile number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                  )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Or',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'E-mail Address',
                  style: GoogleFonts.ubuntu(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                fillColor: Colors.grey[300],
                filled: true,
                hintText: 'enter your email address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign_in');
              },
              child: Text(
                'Back to sign in',
                style: GoogleFonts.ubuntu(
                  color: Colors.grey,
                    fontSize: 18
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                  onPressed: () {
                      Navigator.pushNamed(context, '/verification');
                  },
                  child: Text(
                    'Send',
                    style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            // Center(
            //   child: Text(
            //       'or',
            //   style: GoogleFonts.ubuntu(
            //     color: Colors.black,
            //     fontSize: 20,
            //     fontWeight: FontWeight.w500,
            //   ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // // SignInButton(Buttons.Google, onPressed: () {}),
            // // SignInButton(Buttons.Apple, onPressed: () {}),
            // // SignInButton(Buttons.FacebookNew, onPressed: () {}),
            //
            // SizedBox(
            //   height: 80,
            // ),
            // Text(
            //     "Don't have an account?",
            //     style: GoogleFonts.ubuntu(
            //         color: Colors.grey,
            //         fontSize: 17
            //     ),
            //   ),
            // SizedBox(
            //   height: 10,
            // ),
            // SizedBox(
            //   width: 350,
            //   height: 60,
            //   child: TextButton(
            //     style: TextButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(30.0),
            //         side: BorderSide(color: Colors.grey),
            //       ),
            //     ),
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/register');
            //     },
            //     child: Text(
            //       'Sign Up',
            //       style: GoogleFonts.ubuntu(
            //         color: Colors.black,
            //         fontWeight: FontWeight.w500,
            //         fontSize: 17,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
