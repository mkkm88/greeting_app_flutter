import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Color(0xff4c505b),
        title: const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
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
    color: Colors.white70,
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Text(
      'Welcome to Maulana Azad National Urdu University',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
            fontSize: 36.0,
        )
      ),
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
    );
  }
}
