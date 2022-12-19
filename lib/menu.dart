import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'global.dart';

class Menu extends StatelessWidget {
  const Menu(this.jump, {Key? key}) : super(key: key);
  final Function(double) jump;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 1100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => jump(0),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Image.asset("assets/logo.png", height: 60),
                    const SizedBox(width: 15),
                    Text(title, style: GoogleFonts.poppins(color: Colors.black, fontSize: 15)),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...menu.map(
                  (e) => InkWell(
                    onTap: () => jump(e.pos),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      child: Text(e.name, style: GoogleFonts.poppins(color: Colors.black, fontSize: 15)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
