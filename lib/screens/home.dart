import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/components/navbar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.05,
                horizontal: MediaQuery.of(context).size.width * 0.30),
            child: Column(
              children: [
                const NavBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.1,
                  backgroundImage:
                      const AssetImage('assets/images/profile.jpeg'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: MediaQuery.of(context).size.width * 0.01),
                  child: Column(
                    children: [
                      const Text(
                        "Aayan Agarwal",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      const Text(
                        "Hi!, I'm Aayan, a freshman at Purdue University. I'm majoring in Computer Science and Artificial Intelligence with a minor in Business Intelligence and certificate in Entrepreunership and Innovation",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      const Text(
                        "I like to solve problems around me with code. I have experience in developing web apps and mobile applications. I mostly work with Python, JavaScript, and Dart. I'm also familiar with frameworks like SolidJS, Flutter, and NodeJS.",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      const Text(
                        "I'm also a huge fan of Country and Americana music. I'm passionate about debate, public speaking and the realm of politics and economics.",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      RichText(
                        text: TextSpan(
                          text:
                              "I'm currently looking for internships and opportunities to work on exciting projects. If you have something for me, feel free to reach out to ",
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          children: [
                            TextSpan(
                              text: "agarw357@purdue.edu",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  final Uri emailLaunchUri =
                                      Uri.parse("mailto:agarw357@purdue.edu");
                                  launchUrl(emailLaunchUri);
                                },
                              style: const TextStyle(
                                fontFamily: "Roboto",
                                color: Colors.blue,
                                fontSize: 15,
                              ),
                            ),
                            const TextSpan(
                              text: "!",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
