import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heroicons/heroicons.dart';
import 'package:flutter/animation.dart';

class SosPage extends StatefulWidget {
  const SosPage({Key? key}) : super(key: key);
  @override
  State<SosPage> createState() => _SosPageState();
}

class _SosPageState extends State<SosPage> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.5,
      duration: Duration(seconds: 3),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildBody());
  }

  Widget _buildBody() {
    return AnimatedBuilder(
        animation:
            CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
        builder: (context, child) {
          return TextButton(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                _buildContainer(150 * _controller.value),
                _buildContainer(200 * _controller.value),
                _buildContainer(250 * _controller.value),
                _buildContainer(300 * _controller.value),
                _buildContainer(350 * _controller.value),
                Align(
                  child: TextButton(
                    child: Text('SOS'),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(100),
                      primary: Color.fromARGB(255, 255, 255, 255),
                      textStyle: TextStyle(fontSize: 40),
                    ),
                    onPressed: () {
                      Fluttertoast.showToast(msg: "SOS sent", fontSize: 18);
                    },
                  ),
                )
              ],
            ),
            onPressed: () {},
          );
        });
  }

  Widget _buildContainer(double radius) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            Color.fromARGB(164, 255, 0, 0).withOpacity(1 - _controller.value),
      ),
    );
  }
}
