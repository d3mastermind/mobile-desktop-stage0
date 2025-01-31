import 'package:flutter/material.dart';
import 'package:hng_hire/constants/tile_colors.dart';
import 'package:hng_hire/widgets/talent_tile.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HNG Hire',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(
          0,
          174,
          255,
          255,
        )),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Image.asset(
            "lib/assets/images/logo.png",
            width: 100,
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _launchUrl(
                        link:
                            "https://github.com/d3mastermind/mobile-desktop-stage0");
                  },
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child:
                                  Image.asset("lib/assets/images/github.png")),
                          Icon(
                            size: 50,
                            Icons.navigate_next_rounded,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl(link: "https://delve.fun/");
                  },
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "lib/assets/images/delve.png",
                            color: Colors.black,
                          )),
                          Icon(
                            size: 50,
                            Icons.navigate_next_rounded,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl(
                      link: "https://telex.im/",
                    );
                  },
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "lib/assets/images/telex.png",
                          )),
                          Icon(
                            size: 50,
                            Icons.navigate_next_rounded,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Find and Hire Elite\n Freelance Talent!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "We offer you the best Talents in any tech field.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.lightBlue),
                ),
                Text(
                  "Discover over 20,000+ talents in the HNG network",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.lightBlue.withAlpha(100),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TalentTile(
                  bgColor: TileColors.color1.color,
                  title: "Flutter Developers",
                  link: "http://hng.tech/hire/flutter-developers",
                ),
                TalentTile(
                  bgColor: TileColors.color2.color,
                  title: "React-Native Developers",
                  link: "http://hng.tech/hire/react-native-developers",
                ),
                TalentTile(
                  bgColor: TileColors.color3.color,
                  title: "Kotlin Developers",
                  link: "http://hng.tech/hire/kotlin-developers",
                ),
                TalentTile(
                  bgColor: TileColors.color1.color,
                  title: "Mobile Developers",
                  link: "http://hng.tech/hire/mobile-ui-ux-developers",
                ),
                TalentTile(
                  bgColor: TileColors.color3.color,
                  title: "Android Developers",
                  link: "http://hng.tech/hire/android-developers",
                ),
                TalentTile(
                  bgColor: TileColors.color2.color,
                  title: "iOS Developers",
                  link: "http://hng.tech/hire/ios-developers",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _launchUrl({required String link, context}) async {
  final Uri url = Uri.parse(link);
  try {
    final launched = await launchUrl(url, mode: LaunchMode.inAppWebView);
    if (!launched) {
      throw Exception('Could not launch link');
    }
  } catch (e) {
    // Handle the error, maybe show a snackbar
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not open link: ${e.toString()}')),
      );
    }
  }
}
