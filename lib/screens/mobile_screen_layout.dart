import 'package:flutter/material.dart';
import 'package:whataspp_clone_ui/colors.dart';
import 'package:whataspp_clone_ui/widgets/contact_list.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // this is use to some tabs in the widget like icons etc
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: Text(
            'Whatsapp',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          // bottom tabs
          bottom: TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Tab(
                  text: 'CHARTS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                )
              ]),
        ),
        body: ContactList(),
      ),
    );
  }
}
