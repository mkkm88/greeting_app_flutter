import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login_page-0001.jpg'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Welcome',
            style: GoogleFonts.ubuntu(
              fontSize: 40,
              color: Colors.redAccent,
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
            backgroundImage: AssetImage('assets/manuu_admin.jpg'),
            radius: 150.0,
        ),
    ),
    const Divider(
    height: 90.0,
    color: Colors.redAccent,
    ),
    Column(
      children: [
        Text(
        'Welcome to',
            textAlign: TextAlign.center,
            style: GoogleFonts.ubuntu(
              color: Colors.grey[500],
              letterSpacing: 2.0,
              fontSize: 36.0,
            ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Maulana Azad National Urdu University',
          textAlign: TextAlign.center,
          style: GoogleFonts.ubuntu(
            color: Colors.blueGrey[900],
            letterSpacing: 2.0,
            fontSize: 36.0,
          ),
        ),
      ],
    ),
      const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff4c505b),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_in');
                      },
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}