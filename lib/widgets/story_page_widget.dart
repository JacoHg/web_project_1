import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryPageWidget extends StatelessWidget {
  const StoryPageWidget(
      {super.key,
      required this.assetImage,
      required this.storytext,
      required this.japaneseText,
      required this.titleText});

  final String storytext;
  final String assetImage;
  final String titleText;
  final String japaneseText;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    double offset = 0;

    return Material(
      child: Stack(
        children: [
          Positioned(
            //top: -.25 * offset,
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: assetImage,
              height: height,
              width: width,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: -0.25 * offset,
            child: SizedBox(
              height: height,
              width: width,
              child: Align(
                alignment: const Alignment(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(japaneseText,
                        style: GoogleFonts.notoSansJavanese(
                            fontSize: 80,
                            letterSpacing: 3,
                            fontWeight: FontWeight.bold,
                            //backgroundColor: Color.fromARGB(164, 0, 0, 0),
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    Text(
                      titleText,
                      style: GoogleFonts.quicksand(
                        fontSize: 40,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      color: Color.fromARGB(106, 3, 3, 3),
                      height: 800,
                      width: 600,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          storytext,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    FilledButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: const Text(
                          'Another tale ?',
                          style: TextStyle(
                              
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
