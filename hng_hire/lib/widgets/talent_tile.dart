import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TalentTile extends StatefulWidget {
  const TalentTile({
    super.key,
    required this.bgColor,
    required this.title,
    required this.link,
  });
  final Color bgColor;
  final String title;
  final String link;
  @override
  State<TalentTile> createState() => _TalentTileState();
}

class _TalentTileState extends State<TalentTile> {
  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(widget.link);
    try {
      final launched = await launchUrl(url, mode: LaunchMode.inAppWebView);
      if (!launched) {
        throw Exception('Could not launch ${widget.link}');
      }
    } catch (e) {
      // Handle the error, maybe show a snackbar
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not open link: ${e.toString()}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchUrl,
      child: Container(
        height: 120,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    size: 50,
                    Icons.navigate_next_rounded,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
