import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final String text;

  const Search({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 35,
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 24,
            color: Colors.black54,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black54,
            ),
          ),
          Spacer(),
          Icon(
            Icons.mic_none,
            size: 25,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
