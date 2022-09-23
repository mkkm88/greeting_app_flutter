import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';


class Otp_Verify extends StatefulWidget {
  const Otp_Verify({Key? key}) : super(key: key);

  @override
  State<Otp_Verify> createState() => _Otp_VerifyState();
}

class _Otp_VerifyState extends State<Otp_Verify> {

  OtpFieldController otpController = OtpFieldController();

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
          'Verification',
          style: GoogleFonts.ubuntu(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          children: [
            Text(
                'Please enter the code that was sent to your email or phone number',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16
                ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
                'Enter Verification Code',
              style: GoogleFonts.ubuntu(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                  fontSize: 17
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OTPTextField(
              controller: otpController,
              outlineBorderRadius: 25,
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50,
              style: TextStyle(
                color: Colors.grey,
                  fontSize: 17
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onChanged: (pin) {
                print("Changed: " + pin);
              },
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "If you didn't receive a code!",
                  style: GoogleFonts.ubuntu(
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                    child: Text(
                        'Resend',
                      style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.w600,
                        color: Colors.redAccent,
                      ),
                    ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
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
                  Navigator.pushNamed(context, '/newpass');
                },
                child: Text(
                  'Verify',
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
