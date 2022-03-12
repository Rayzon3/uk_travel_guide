import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Splash',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body:ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical:20),
            child:Image.asset(
              'assests/images/uttarakhand-logo-english.png',
              width: 100,
              height: 100,
            ),
          ),
          Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical:20),
        child: Center(
          child: Text(
          'Uttarakhand Tourism App',
          textAlign: TextAlign.center,
          style:TextStyle(
            fontSize:50,
            fontWeight:FontWeight.bold,
            color: Colors.purple,
          ),
        ),
        ),
        
        
      ),

      Image.asset(
        'assests/images/mountain.png'
      ),
        ],
      ),
      
    );
  }
}