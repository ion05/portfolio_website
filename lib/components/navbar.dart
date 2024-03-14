import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool resumeHover = false;
  bool projectHover = false;
  bool homeHover = false;

  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

  @override
  Widget build(BuildContext context) {
    const String homeText = "Home";
    const String resumeText = "Resume";
    const String projectText = "Projects";
    const TextStyle textStyle = TextStyle(
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontSize: 17,
    );
    final Size homeTextSize = _textSize(homeText, textStyle);
    final Size resumeTextSize = _textSize(resumeText, textStyle);
    final Size projectTextSize = _textSize(projectText, textStyle);
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              // make splash and highlight invisible
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                splashFactory: NoSplash.splashFactory,
                // highlightColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              onHover: (value) {
                setState(() {
                  homeHover = value;
                });
              },
              child: Stack(
                children: [
                  Container(
                    height: homeTextSize.height + 10,
                    child: Text(homeText, style: textStyle),
                  ),
                  AnimatedPositioned(
                    width: homeHover ? homeTextSize.width : 0,
                    height: homeTextSize.height + 4,
                    duration: const Duration(milliseconds: 400),
                    child: Container(
                      // height: 2,
                      // width: txtSize.width,
                      color: Colors.black,
                      margin: EdgeInsets.only(top: homeTextSize.height + 2),
                    ),
                  )
                ],
              )),
          SizedBox(
            width: 15,
          ),
          TextButton(
              // make splash and highlight invisible
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                splashFactory: NoSplash.splashFactory,
                // highlightColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/projects');
              },
              onHover: (value) {
                setState(() {
                  projectHover = value;
                });
              },
              child: Stack(
                children: [
                  Container(
                    height: projectTextSize.height + 10,
                    child: Text(projectText, style: textStyle),
                  ),
                  AnimatedPositioned(
                    width: projectHover ? projectTextSize.width : 0,
                    height: projectTextSize.height + 4,
                    duration: const Duration(milliseconds: 400),
                    child: Container(
                      // height: 2,
                      // width: txtSize.width,
                      color: Colors.black,
                      margin: EdgeInsets.only(top: projectTextSize.height + 2),
                    ),
                  )
                ],
              )),
          SizedBox(
            width: 15,
          ),
          TextButton(
              // make splash and highlight invisible
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                splashFactory: NoSplash.splashFactory,
                // highlightColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {},
              onHover: (value) {
                setState(() {
                  resumeHover = value;
                });
              },
              child: Stack(
                children: [
                  Container(
                    height: resumeTextSize.height + 10,
                    child: Text(resumeText, style: textStyle),
                  ),
                  AnimatedPositioned(
                    width: resumeHover ? resumeTextSize.width : 0,
                    height: resumeTextSize.height + 4,
                    duration: const Duration(milliseconds: 400),
                    child: Container(
                      // height: 2,
                      // width: txtSize.width,
                      color: Colors.black,
                      margin: EdgeInsets.only(top: resumeTextSize.height + 2),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
