import 'package:flutter/material.dart';

import '../model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> chatModel;

  String s;

  @override
  Widget build(BuildContext context) {
    chatModel = dummyData;
    return new ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new Divider(
                  height: 5.0,
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    radius: 30.0,
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundImage: new NetworkImage(dummyData[i].profile),
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(dummyData[i].name,
                          style: new TextStyle(fontWeight: FontWeight.bold)),
                      new Text(dummyData[i].time,
                          style: new TextStyle(
                              color: Colors.grey, fontSize: 14.0)),
                    ],
                  ),
                  subtitle: new Container(
                    child: new Text(
                      dummyData[i].message,
                      style: new TextStyle(
                          fontSize: 15.0, fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ));
  }
}
