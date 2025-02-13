import 'package:flutter/material.dart';
import 'package:whataspp_clone_ui/colors.dart';
import 'package:whataspp_clone_ui/infor.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]['message'].toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                      radius: 30,
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: dividerColor,
                indent: 85,
              )
            ],
          );
        },
      ),
    );
  }
}
