import 'package:challenge/home_screen/components/bottomBar.dart';
import 'package:challenge/home_screen/components/breaking_news.dart';
import 'package:challenge/home_screen/components/devider_title.dart';
import 'package:challenge/home_screen/components/item_recom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.search,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.notifications,
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: ListView(
        children: [
          TitleDivider(leadig: "Breaking News", trailling: "View all"),
          const BreakingNews(),
          TitleDivider(leadig: "Recommendation News", trailling: "View all"),
          ItemRecom(
            topic: "Sports",
            title: "What Training Do Vollyball players Need?",
            authorImg: "assets/images/person.png",
            authorname: "McKindney",
            bodyImg: "assets/images/volley.jpeg",
            date: "Feb 27,2023",
          ),
          ItemRecom(
            topic: "Sports",
            title: "What Training Do Vollyball players Need?",
            authorImg: "assets/images/person.png",
            authorname: "McKindney",
            bodyImg: "assets/images/volley.jpeg",
            date: "Feb 27,2023",
          ),
          ItemRecom(
            topic: "Sports",
            title: "What Training Do Vollyball players Need?",
            authorImg: "assets/images/person.png",
            authorname: "McKindney",
            bodyImg: "assets/images/volley.jpeg",
            date: "Feb 27,2023",
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
