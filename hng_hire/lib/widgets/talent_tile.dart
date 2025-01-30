import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        color: widget.bgColor,
        child: Text(widget.link),
      ),
    );
  }
}
