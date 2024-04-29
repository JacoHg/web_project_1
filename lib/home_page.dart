import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:web_project_1/widgets/container_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var screenSize = MediaQuery.of(context).size;

    return Material(
      child: NotificationListener<ScrollNotification>(
        onNotification: updateOffsetToScroll,
        child: Stack(
          children: [
            Positioned(
                top: -.25 * offset,
                child: Container(
                    height: height,
                    width: width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            heroImage,
                          ),
                          fit: BoxFit.fill),
                    ))),
            Positioned(
              top: -0.25 * offset,
              child: SizedBox(
                height: height,
                width: width,
                child: Align(
                  alignment: const Alignment(0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '日本の民話',
                        style: GoogleFonts.notoSansJavanese(
                            fontSize: 80,
                            letterSpacing: 3,
                            fontWeight: FontWeight.bold,
                            //backgroundColor: Color.fromARGB(164, 0, 0, 0),
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Japanese',
                        style: GoogleFonts.quicksand(
                            fontSize: 40,
                            letterSpacing: 5,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(185, 255, 255, 255)),
                      ),
                      Text(
                        'Folklore',
                        style: GoogleFonts.quicksand(
                            fontSize: 40,
                            letterSpacing: 5,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(185, 255, 255, 255)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Dive into past tales of japanese folklore, explore  customs, beliefs, ',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      const Text(
                        'stories, and sayings of a people handed down from generation to generation.',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height,
                  ),
                  //ImageNetwork(image: heroImage2, height: height, width: width)
                  Container(
                    height: height,
                    width: width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            heroImage2,
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '物語を選ぶ',
                          style: GoogleFonts.notoSansJavanese(
                            fontSize: 40,
                            letterSpacing: 5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Pick a tale',
                          style: GoogleFonts.quicksand(
                            fontSize: 40,
                            letterSpacing: 5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         SizedBox(
                          height: screenSize.height * 0.10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/bunbuku');
                              },
                              child: AnimatedCon(
                                imagePath: 'assets/tea.jpg',
                                textData: 'Bunbuku Chagama',
                              ),
                            ),
                             SizedBox(
                              width: screenSize.width / 40,
                            ),
                            GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/momo'),
                              child: AnimatedCon(
                                imagePath: 'assets/peach.jpg',
                                textData: 'Momotarō',
                              ),
                            ),
                             SizedBox(
                              width: screenSize.width / 40,
                            ),
                            GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/urashima'),
                              child: AnimatedCon(
                                imagePath: 'assets/taroo.jpg',
                                textData: 'Urashima Tarō',
                              ),
                            ),
                             SizedBox(
                              width: screenSize.width / 40,
                            ),
                            GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/hanasaka'),
                              child: AnimatedCon(
                                imagePath: 'assets/hanasaki.jpg',
                                textData: 'Hanasaka Jiisan',
                              ),
                            ),
                             SizedBox(
                              width: screenSize.width / 40,
                            ),
                            GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/bancho'),
                              child: AnimatedCon(
                                imagePath: 'assets/bancho4.jpg',
                                textData: 'Banchō Sarayashiki',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  bool updateOffsetToScroll(ScrollNotification scrollNotification) {
    setState(() {
      offset = scrollNotification.metrics.pixels;
    });
    return true;
  }
}

const heroImage = 'assets/front.jpg';
const heroImage2 = 'assets/japaneseweb2.jpg';
