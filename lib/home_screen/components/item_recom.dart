import 'package:flutter/material.dart';

class ItemRecom extends StatefulWidget {
  String bodyImg, topic, title, authorImg, authorname, date;

  ItemRecom({
    Key? key,
    required this.topic,
    required this.title,
    required this.authorImg,
    required this.authorname,
    required this.bodyImg,
    required this.date,
  }) : super(key: key);

  @override
  State<ItemRecom> createState() => _ItemRecomState();
}

class _ItemRecomState extends State<ItemRecom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(widget.bodyImg),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    widget.topic,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Text(
                  widget.title,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.authorImg),
                      radius: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.authorname,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.grey,
                      size: 5,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.date,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
