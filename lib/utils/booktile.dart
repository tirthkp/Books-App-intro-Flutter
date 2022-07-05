import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final int no;
  const BookTile({Key? key, required this.no}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          'images/books/$no.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
