import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'global.dart';

class Body1 extends StatelessWidget {
  const Body1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 1100,
            margin: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(menu[0].name, style: GoogleFonts.poppins(fontSize: 35, color: Colors.grey.shade800)),
                Container(height: 1, color: const Color(0xFF0072BB)),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 400,
                        child: Text(text1, style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey.shade800)),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      flex: 1,
                      child: Image.asset("assets/img1.jpg", height: 400, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            width: 1100,
            margin: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CO NABÍZÍME", style: GoogleFonts.poppins(fontSize: 35, color: Colors.grey.shade800)),
                Container(height: 1, color: const Color(0xFF0072BB)),
                const SizedBox(height: 40),
                SizedBox(
                  height: 700,
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: Image.asset("assets/img2.jpg", fit: BoxFit.cover)),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ...it.map(
                              (e) => Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(e.icon, size: 50, color: const Color(0xFF262626)),
                                  const SizedBox(width: 20),
                                  SizedBox(width: 420, child: Text(e.text, style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey.shade800))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
