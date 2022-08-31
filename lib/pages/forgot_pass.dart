import 'package:flutter/material.dart';

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
            'Forgot Password',
        style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body:  Container(
        padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
        child: Column(
          children: <Widget>[
            Text(
                'Enter Email Address',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 17
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: 'example@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign_in');
              },
              child: Text(
                'Back to sign in',
                style: TextStyle(
                  color: Colors.grey,
                    fontSize: 17
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
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.red),
                  ),
                ),
                  onPressed: () {
                      Navigator.pushNamed(context, '/verification');
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                  'or',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.g_mobiledata),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.apple),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(
                "Don't have an account?",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17
                ),
              ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.grey),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  'Sign Up',
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
