import 'package:flutter/material.dart';

class UserProfileCard1 extends StatefulWidget {
  const UserProfileCard({Key? key, required this.name, required this.imgUrl, required this.languages}) : super(key: key);
  final String name;
  final String imgUrl;
  final String languages;
  @override
  _UserProfileCardState createState() => _UserProfileCardState();
}

class _UserProfileCardState extends State<UserProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        child: Row(
            children: [
              const Image (
                image: Image.network(widget.imgUrl),
                fit: BoxFit.fitHeight,
              ),
              Column (
                  children: const
                  [ Text(widget.name), Text(widget.languages) ]
              )
            ],
        ),
    );
  }
}
