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
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        centerTitle: true,
        title: const Text("Sluneční domov o.p.s."),
        backgroundColor: const Color(0xFF0072bb),
      ),
    );
  }
}
