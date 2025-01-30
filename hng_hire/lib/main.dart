import 'package:flutter/material.dart';
import 'package:hng_hire/constants/tile_colors.dart';
import 'package:hng_hire/widgets/talent_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          centerTitle: true,
          title: Image.asset(
              "mobile-desktop-stage0/hng_hire/lib/assets/images/logo.png"),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Find and Hire Elite\n Freelance Talent!"),
                  Text("We offer you the best Talents in any tech field."),
                  Text("Discover over 20,000+ talents in the HNG network"),
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
                    title: "kotlin Developers",
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
      ),
    );
  }
}
