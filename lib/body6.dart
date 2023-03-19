import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'global.dart';

class Body6 extends StatelessWidget {
  const Body6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: SizedBox(width: 1100, child: Text(menu[5].name, style: GoogleFonts.poppins(fontSize: 35, color: Colors.grey.shade800)))),
          Center(child: Container(width: 1100, height: 1, color: const Color(0xFF0072BB))),
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              width: 1100,
              child: Column(
                children: [
                  ...gallery.map(
                    (e) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...e.map(
                          (e) => GestureDetector(
                            onTap: () {
                              launchUrl(Uri.parse("https://www.instagram.com/trochujinydomecek"));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(20),
                              child: Image.asset(
                                e,
                                width: 310,
                                height: 310,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
