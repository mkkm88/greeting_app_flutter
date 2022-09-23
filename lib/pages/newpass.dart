import 'package:flutter/material.dart';

class New_Pass extends StatefulWidget {
  const New_Pass({Key? key}) : super(key: key);

  @override
  State<New_Pass> createState() => _New_PassState();
}

class _New_PassState extends State<New_Pass> {
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
            'Reset Password',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                'At least 8 characters, with uppercase and lowercase letters.',
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
                'New Password',
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w700,
              fontSize: 17,
             )
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscuringCharacter: "*",
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: '********',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Confirm Password',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                )
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscuringCharacter: "*",
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: '********',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
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
                  Navigator.pushNamed(context, '/sign_in');
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
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

//konsa data ni ja ra bata
//firebase auth use kiya mene dekhiye dikhata hu
