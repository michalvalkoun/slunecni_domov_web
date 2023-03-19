import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'global.dart';

class Body5 extends StatelessWidget {
  const Body5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1100,
        margin: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(menu[4].name, style: GoogleFonts.poppins(fontSize: 35, color: Colors.grey.shade800)),
            Container(height: 1, color: const Color(0xFF0072BB)),
            const SizedBox(height: 40),
            ...docs.map((e) => AbsorbPointer(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () => html.window.open(e.link, "text"),
                    child: Row(
                      children: [
                        const Icon(Icons.file_download_rounded),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            e.name,
                            style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
