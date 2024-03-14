import 'package:flutter/material.dart';
import 'package:portfolio_website/components/navbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_website/global/data.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05,
                  horizontal: MediaQuery.of(context).size.width * 0.25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const NavBar(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing:
                          MediaQuery.of(context).size.width * 0.02,
                      mainAxisSpacing:
                          MediaQuery.of(context).size.height * 0.05,
                    ),
                    itemCount: projects.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          // color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // create a cached network image
                            Image.asset(
                              projects[index]["image"]!,
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height * 0.20,
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                projects[index]["name"]!,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                projects[index]["description"]!,
                                maxLines: 4,
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.normal,
                                    color: Colors
                                        .black, // Add your desired color here
                                  ),
                                  children: <TextSpan>[
                                    const TextSpan(
                                      text: 'Tech Stack: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: projects[index]["techStack"]!,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            // add link to github using textbutton
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  projects[index]['github']!.isEmpty
                                      ? Container()
                                      : TextButton(
                                          style: ButtonStyle(
                                            overlayColor:
                                                MaterialStateProperty.all(
                                                    Colors.transparent),
                                            splashFactory:
                                                NoSplash.splashFactory,
                                            // make all margin and padding zero
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.zero),
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    Size.zero),
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            visualDensity:
                                                VisualDensity.compact,
                                          ),
                                          onPressed: () {
                                            var url = Uri.parse(
                                                projects[index]["github"]!);
                                            launchUrl(url);
                                          },
                                          child: const Text(
                                            "GitHub",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.normal,
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  projects[index]["url"]!.isEmpty
                                      ? Container()
                                      : TextButton(
                                          style: ButtonStyle(
                                            overlayColor:
                                                MaterialStateProperty.all(
                                                    Colors.transparent),
                                            splashFactory:
                                                NoSplash.splashFactory,
                                            // make all margin and padding zero
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.zero),
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    Size.zero),
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            visualDensity:
                                                VisualDensity.compact,
                                          ),
                                          onPressed: () {
                                            var url = Uri.parse(
                                                projects[index]["url"]!);
                                            launchUrl(url);
                                          },
                                          child: const Text(
                                            "Link",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.normal,
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
