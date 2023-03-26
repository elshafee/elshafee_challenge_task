import 'package:flutter/material.dart';

class ItemSlide extends StatefulWidget {
  String title, body, mdified, imagePath, topic;

  ItemSlide({
    Key? key,
    required this.title,
    required this.body,
    required this.mdified,
    required this.topic,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<ItemSlide> createState() => _ItemSlideState();
}

class _ItemSlideState extends State<ItemSlide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            image: AssetImage(widget.imagePath),
            fit: BoxFit.cover,
            opacity: 0.65),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 15,
            child: InkWell(
              child: Container(
                width: 80,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                    child: Text(
                  widget.topic,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ),
          Positioned(
            left: 5,
            bottom: 10,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ListTile(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(
                      Icons.verified,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 10,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.mdified,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                subtitle: Text(
                  widget.body,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
