import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Department_Greet extends StatefulWidget {
  const Department_Greet({Key? key}) : super(key: key);

  @override
  State<Department_Greet> createState() => _Department_GreetState();
}

class _Department_GreetState extends State<Department_Greet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Color(0xff4c505b),
        title: Text(
          'Welcome',
          style: GoogleFonts.ubuntu(
            fontSize: 40,
            color: Colors.green,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cs&it.jpg'),
                radius: 150.0,
              ),
            ),
            const Divider(
              height: 80.0,
              color: Colors.redAccent,
            ),
            Column(
              children: [
                Text(
                    'Dear! Mohd Kasim',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntu(
                      color: Colors.blueGrey,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Welcome To',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntu(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Department of Computer Science & Information Technology',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntu(
                      color: Colors.blueGrey,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                    )
                ),
              ],
            ),
            SizedBox(
                height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff4c505b),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
