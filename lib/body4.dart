import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'global.dart';

class Body4 extends StatelessWidget {
  const Body4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1100,
        margin: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(menu[3].name, style: GoogleFonts.poppins(fontSize: 35, color: Colors.grey.shade800)),
            Container(height: 1, color: const Color(0xFF0072BB)),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 400,
                    child: Text(text3, style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey.shade800)),
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(
                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 5),
                        child: Column(
                          children: [
                            SizedBox(width: 200, child: Text("Naskenujte QR kód a pošlete dar na\n č.u. 2301881656/2010", textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 17))),
                            const SizedBox(height: 10),
                            Image.asset(
                              "assets/qr.png",
                              width: 200,
                              height: 200,
                            ),
                          ],
                        )),
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
