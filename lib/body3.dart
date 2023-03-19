import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'global.dart';

class Body3 extends StatelessWidget {
  const Body3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: SizedBox(width: 1100, child: Text(menu[2].name, style: GoogleFonts.poppins(fontSize: 35, color: Colors.grey.shade800)))),
          Center(child: Container(width: 1100, height: 1, color: const Color(0xFF0072BB))),
          const SizedBox(height: 20),
          ...contacts.map(
            (e) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...e.map(
                  (e) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      elevation: 1,
                      child: Container(
                        width: 220,
                        height: 270,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(height: 60, alignment: Alignment.center, child: Text(e.position, textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 18))),
                            ClipOval(
                                child: Image.asset(
                              e.photo,
                              width: 100,
                              height: 120,
                              fit: BoxFit.cover,
                            )),
                            Text(e.name, textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500)),
                            Text(e.tel, textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
