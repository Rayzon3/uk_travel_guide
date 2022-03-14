import 'package:flutter/material.dart';
import 'package:uk_travel_guide/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const MyHomePage(title: "Uttarakhand Tourist Guide")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(
              'assets/images/uttarakhand-logo-english.png',
              width: 100,
              height: 100,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: const Center(
              child: Text(
                'Uttarakhand Tourism App',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/images/mountain.png',
            height: 650,
          ),
        ],
      ),
    );
  }
}
