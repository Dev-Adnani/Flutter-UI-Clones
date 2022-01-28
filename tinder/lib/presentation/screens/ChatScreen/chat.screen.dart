import 'package:flutter/material.dart';
import 'package:tinder/app/constant/app.colors.dart';
import 'package:tinder/core/mock_data/chats_json.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  getBody() {
    var size = MediaQuery.of(context).size;

    return ListView(
      padding: EdgeInsets.only(bottom: 90),
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Messages',
                style: TextStyle(
                  fontSize: 19,
                  color: primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 25,
                width: 1,
                decoration: BoxDecoration(
                  color: black.withOpacity(0.15),
                ),
              ),
              Text(
                'Matches',
                style: TextStyle(
                  fontSize: 19,
                  color: grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: grey,
          thickness: 0.8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Container(
            height: 38,
            decoration: BoxDecoration(
              color: grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              cursorColor: black.withOpacity(0.5),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: black.withOpacity(0.5),
                ),
                hintText: "Search 0 Matches",
              ),
            ),
          ),
        ),
        Divider(
          color: grey,
          thickness: 0.8,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Matches',
                style: TextStyle(
                  fontSize: 19,
                  color: primary_one,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    chats_json.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Stack(
                                children: [
                                  chats_json[index]['story']
                                      ? Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: primary, width: 3),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Container(
                                              width: 70,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    chats_json[index]['img'],
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container(
                                          width: 65,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                chats_json[index]['img'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                  chats_json[index]['online']
                                      ? Positioned(
                                          top: 48,
                                          left: 48,
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: green,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: white, width: 3)),
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 70,
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  chats_json[index]['name'],
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                  userMessages.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            child: Stack(
                              children: [
                                userMessages[index]['story']
                                    ? Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: primary,
                                            width: 3,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Container(
                                            width: 70,
                                            height: 70,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    userMessages[index]['img']),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        width: 65,
                                        height: 65,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                userMessages[index]['img']),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                userMessages[index]['online']
                                    ? Positioned(
                                        top: 48,
                                        left: 52,
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: green,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: white,
                                              width: 3,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userMessages[index]['name'],
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: size.width - 135,
                                child: Text(
                                  userMessages[index]['message'] +
                                      " - " +
                                      userMessages[index]['created_at'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    overflow: TextOverflow.ellipsis,
                                    color: black.withOpacity(0.8),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
