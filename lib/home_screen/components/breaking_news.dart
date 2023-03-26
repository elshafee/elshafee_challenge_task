import 'package:challenge/home_screen/components/item_slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class BreakingNews extends StatefulWidget {
  const BreakingNews({Key? key}) : super(key: key);

  @override
  State<BreakingNews> createState() => _BreakingNewsState();
}

class _BreakingNewsState extends State<BreakingNews> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: MediaQuery.of(context).size.height * 0.3,
      children: [
        ItemSlide(
          topic: "Sports",
          title: "CNN mobile",
          body: "Alexander wears modified helmet in road races",
          mdified: "6 hours ago",
          imagePath: "assets/images/image.png",
        ),
        ItemSlide(
          topic: "Sports",
          title: "CNN mobile",
          body: "Alexander wears modified helmet in road races",
          mdified: "6 hours ago",
          imagePath: "assets/images/image.png",
        ),
      ],
    );
  }
}
