import 'package:flutter/material.dart';
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
          color: Colors.grey[900],
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Verification',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
        child: Column(
          children: [
            Text(
                'Enter Verification Code',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 17
              ),
            ),
            SizedBox(
              height: 15,
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
                //print("Changed: " + pin);
              },
              onCompleted: (pin) {
                //print("Completed: " + pin);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("If you didn't receive a code!"),
                TextButton(
                  onPressed: () {},
                    child: Text('Resend'),
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
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/newpass');
                },
                child: Text(
                  'Verify',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
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
