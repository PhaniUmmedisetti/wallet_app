import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key, required this.title, required this.subTitle, required this.imageUrl}) : super(key: key);

  final String title;
  final String subTitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title:  Text(title),
      subtitle:  Text(subTitle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '+4580.30',
            style: TextStyle(color: Colors.green),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'USD',
            style: TextStyle(color: Colors.grey.withOpacity(0.9)),
          )
        ],
      ),
    );
  }
}
