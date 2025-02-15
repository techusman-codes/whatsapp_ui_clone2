import 'package:flutter/material.dart';
import 'package:whataspp_clone_ui/infor.dart';
import 'package:whataspp_clone_ui/widgets/my_message_card.dart';

class ChartList extends StatelessWidget {
  const ChartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          //  my message => card
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return null;
        // sendMessage card
      },
    );
  }
}
