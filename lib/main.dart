import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //we will put stuff here that needs to be executed first
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Uttarakhand Tourist Guide"),
        centerTitle: true,
        backgroundColor: const Color(0xffE76D0A),
      ),
      backgroundColor: const Color(0xffF0F0F0),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          ElevatedButton(
            onPressed: () =>
                Fluttertoast.showToast(msg: "Button Pressed", fontSize: 18),
            child: const Text("4 Dham Yatra Guide"),
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(280, 80),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
                primary: const Color(0xffEFEAEA),
                onPrimary: const Color(0xffE76D0A)),
          ),
        ],
      ),
    );
  }
}
