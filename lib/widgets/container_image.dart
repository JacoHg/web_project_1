import 'package:flutter/material.dart';

class AnimatedCon extends StatefulWidget {
  final String imagePath;
  final String textData;
   AnimatedCon({super.key, required this.imagePath, required this.textData});
  

  @override
  State<AnimatedCon> createState() => _AnimatedConState();
}

class _AnimatedConState extends State<AnimatedCon> {
  
  bool isHover = false;
  Offset mousPos = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (e) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (e) {
          setState(() {
            isHover = false;
          });
        },
        onHover: (e) {
          setState(() {
            mousPos += e.delta;
            mousPos *= 0.12;
          });
        },
        child: Container(
          height: 450,
          width: 280,
          color: const Color.fromARGB(164, 3, 250, 250),
          child: Stack(
            children: [backImage(), gradient(), texts()],
          ),
        ),
      
    );
  }

  backImage() {
    var screenSize = MediaQuery.of(context).size;
    return AnimatedPositioned(
      curve: Curves.easeOutCubic,
      top: isHover ? -40 + mousPos.dy : 0,
      left: isHover ? -100 + mousPos.dx : -100,
      height: isHover ? 600 : 450,
      width: 500,
      duration: const Duration(milliseconds: 1000),
      child: Container(
        width: 500,
        height: 600,
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.imagePath), fit: BoxFit.contain),
        ),
      ),
    );
  }

  gradient() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeOutCubic,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [
            Colors.black.withOpacity(isHover ? 0.8 : 0),
            Colors.transparent
          ])),
    );
  }

  texts() {

    

    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 1000),
            style: TextStyle(
                color: Colors.white.withOpacity(isHover ? 1 : 0.6),
                fontSize: 25),
            child: Text(isHover ? widget.textData : '.'),
            
          )
        ],
      ),
    );
  }
}
