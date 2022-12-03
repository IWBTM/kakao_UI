import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:kakao_01/components/my_chat.dart';
import 'package:kakao_01/components/time_line.dart';

import '../components/chat_icon_button.dart';
import '../components/other_chat.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  List<MyChat> chats = [];
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffb2c7da),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              '홍길동',
              style: Theme.of(context).textTheme.headline6,
            ),
            actions: [
              Icon(Icons.search),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Icon(FontAwesomeIcons.bars),
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      TimeLine(time: '2022년 11월 24일 목요일'),
                      OtherChat(
                          name: '홍길동', text: '새해 복 많이 받으세요.', time: '오전 11:02'),
                      MyChat(time: '오후 11:18', text: '선생님도 복 많이 받으세요 !'),
                      ...List.generate(chats.length, (index) => chats[index]),
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                color: Colors.white,
                child: Row(
                  children: [
                    ChatIconButton(
                      icon: Icon(FontAwesomeIcons.plusSquare),
                    ),
                    Expanded(
                      child: Container(
                        child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          onSubmitted: (value) {
                            print('$value : <---------');
                            _handleSubmitted(value);
                          },
                        ),
                      ),
                    ),
                    ChatIconButton(
                      icon: Icon(FontAwesomeIcons.smile),
                    ),
                    ChatIconButton(
                      icon: Icon(FontAwesomeIcons.cog),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  _handleSubmitted(mtext) {
    _textEditingController.clear();
    setState(() {
      chats.add(
        MyChat(
          time: DateFormat('a K:m')
              .format(DateTime.now())
              .replaceAll('AM', '오전')
              .replaceAll('PM', '오후'),
          text: mtext,
        ),
      );
    });
  }
}
