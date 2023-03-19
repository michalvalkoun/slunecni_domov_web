import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'global.dart';

class Body2 extends StatelessWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1100,
        margin: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(menu[1].name, style: GoogleFonts.poppins(fontSize: 35, color: Colors.grey.shade800)),
            Container(height: 1, color: const Color(0xFF0072BB)),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 400,
                    child: Text(text2, style: GoogleFonts.poppins(fontSize: 20, color: Colors.grey.shade800)),
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
