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
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
            'New Password',
        style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                'Enter New Password',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 17,
             )
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: '8 character at least',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
                'Confirm Password',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                )
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
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
          ],
        ),
      ),
    );

  }
}

//konsa data ni ja ra bata
//firebase auth use kiya mene dekhiye dikhata hu
