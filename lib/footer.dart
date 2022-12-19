import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'global.dart';

class Footer extends StatelessWidget {
  const Footer(this.jump, {Key? key}) : super(key: key);
  final Function(double) jump;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(onTap: () async => await launchUrl(Uri.parse(mapLink)), child: Image.asset("assets/map.png", height: 350, width: double.infinity, fit: BoxFit.cover)),
      Container(
        height: 300,
        color: const Color(0xFF262626),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(footer1Head, style: GoogleFonts.poppins(fontSize: 20, letterSpacing: 2, color: Colors.white)),
                    const SizedBox(height: 20),
                    ...footer1Text.map((e) => Text(e, style: GoogleFonts.poppins(color: const Color(0xFF707070)))),
                  ],
                ),
                const Spacer(flex: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(footer2Head, style: GoogleFonts.poppins(fontSize: 20, letterSpacing: 2, color: Colors.white)),
                    const SizedBox(height: 20),
                    ...menu.map(
                      (e) => Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => jump(e.pos),
                          child: Text("${e.name.substring(0, 1)}${e.name.substring(1).toLowerCase()}", style: GoogleFonts.poppins(color: const Color(0xFF707070))),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
              ],
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 60,
        color: const Color(0xFF222222),
        child: Text("${DateTime.now().year} \u00a9 ${footer1Text.first}", style: GoogleFonts.poppins(color: const Color(0xFF707070))),
      ),
    ]);
  }
}
