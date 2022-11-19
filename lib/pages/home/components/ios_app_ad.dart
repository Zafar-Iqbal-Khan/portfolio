import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/apps_model.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

class IosAppAd extends StatefulWidget {
  @override
  State<IosAppAd> createState() => _IosAppAdState();
}

class _IosAppAdState extends State<IosAppAd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  var apps = [
    AppModel(
      appImage: "assets/sneaker.png",
      appName: "SNEAKERS\nAPP",
      appDesc:
          "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
      appType: "IOS/ANDROID APP",
    ),
    // AppModel(
    //   appImage: "assets/ios.png",
    //   appName: "UNIVERSAL\nSMART HOME APP",
    //   appDesc:
    //       "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
    //   appType: "IOS APP",
    // ),
    AppModel(
      appImage: "assets/draw-3.png",
      appName: "DRAWING\nBOARD",
      appDesc:
          "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
      appType: "IOS/ANDROID APP",
    ),
    AppModel(
      appImage: "assets/portfolio.png",
      appName: "MY\nPORTFOLIO",
      appDesc:
          "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
      appType: "IOS/ANDROID/WEB APP",
    ),

    AppModel(
      appImage: "assets/jobfinder.png",
      appName: "JOB\nFINDER",
      appDesc:
          "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
      appType: "IOS/ANDROID APP",
    ),
    AppModel(
      appImage: "assets/bank.png",
      appName: "BANKING\nAPP",
      appDesc:
          "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
      appType: "IOS/ANDROID APP",
    ),
    AppModel(
      appImage: "assets/travel.png",
      appName: "TRAVEL\nAPP",
      appDesc:
          "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
      appType: "IOS/ANDROID APP",
    ),
    AppModel(
      appImage: "assets/guitar.png",
      appName: "FENDER",
      appDesc:
          "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
      appType: "IOS/ANDROID APP",
    ),
  ];

  int appIndex = 0;

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Container(
              child: Flex(
                direction: constraints.maxWidth > 720
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Image.asset(
                      // "assets/ios.png",
                      apps[appIndex].appImage,
                      height: 500,
                      // Set width for image on smaller screen
                      width: constraints.maxWidth > 720.0 ? null : 350.0,
                    ),
                  ),
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          apps[appIndex].appType,
                          // "IOS APP",
                          style: GoogleFonts.oswald(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          // "UNIVERSAL\nSMART HOME APP",
                          apps[appIndex].appName,
                          style: GoogleFonts.oswald(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                            fontSize: 35.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          apps[appIndex].appDesc,
                          // "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
                          style: TextStyle(
                            color: kCaptionColor,
                            height: 1.5,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                height: 48.0,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 28.0,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      "EXPLORE MORE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: kPrimaryColor,
                                  ),
                                ),
                                height: 48.0,
                                padding: EdgeInsets.symmetric(horizontal: 28.0),
                                child: TextButton(
                                  onPressed: () {
                                    if (apps.length > appIndex + 1) {
                                      setState(() {
                                        appIndex++;
                                      });
                                    } else {
                                      setState(() {
                                        appIndex = 0;
                                      });
                                    }
                                  },
                                  child: Center(
                                    child: Text(
                                      "NEXT APP",
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
