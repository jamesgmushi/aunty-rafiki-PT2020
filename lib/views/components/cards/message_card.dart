import 'package:aunty_rafiki/models/message.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final Message message;

  const MessageCard({Key key, @required this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 10,
      ),
      child: Material(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              message.sender == null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(message.phoneNumber),
                        SizedBox(
                          width: 50,
                        ),
                        Text(message.userName)
                      ],
                    )
                  : Text(message.sender),
              Text(message.text),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[Text(message.time)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
