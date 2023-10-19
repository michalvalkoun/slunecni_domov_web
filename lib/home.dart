import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:slunecni_domov/global.dart';

import 'menu.dart';
import 'body1.dart';
import 'body2.dart';
import 'body3.dart';
import 'body4.dart';
import 'body5.dart';
import 'body6.dart';

import 'footer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool open = true;
  ScrollController controller = ScrollController();

  void jump(double i) => controller.jumpTo(i + MediaQuery.of(context).size.width * 0.38);

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Menu(jump),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Column(
            children: [
              Builder(
                builder: ((context) {
                  final double height = MediaQuery.of(context).size.width * 0.38;
                  return CarouselSlider(
                    options: CarouselOptions(
                      height: height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                    ),
                    items: mainPics
                        .map(
                          (e) => Center(
                            child: Image.asset(e, width: double.infinity, height: height, fit: BoxFit.cover),
                          ),
                        )
                        .toList(),
                  );
                }),
              ),
              const Body1(),
              const Body2(),
              const Body3(),
              const Body4(),
              const Body5(),
              const Body6(),
              Footer(jump),
            ],
          ),
        ),
      ),
    );
  }
}
