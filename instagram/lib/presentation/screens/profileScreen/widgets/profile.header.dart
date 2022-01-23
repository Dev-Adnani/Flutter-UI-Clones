import 'package:flutter/material.dart';
import 'package:instagram/presentation/screens/profileScreen/widgets/add.story.card.profile.dart';
import 'package:instagram/presentation/screens/profileScreen/widgets/profile.label.count.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  bool _isExpansionTileOpen = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 10, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AddStoryCardProfile(),
              SizedBox(
                width: 8,
              ),
              ProfileLabelCount(
                labelText: 'Posts',
                count: '5',
              ),
              ProfileLabelCount(
                labelText: 'Followers',
                count: '1 M',
              ),
              ProfileLabelCount(
                labelText: 'Following',
                count: '5',
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'deeevvvvvv_',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  "Writing Source Code For My Life In A Private Repo ; \nIt's All About Inner Peace 🕊️",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade500),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade500),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(Icons.expand_more_outlined),
              )
            ],
          ),
        ),
        ExpansionTile(
          onExpansionChanged: (_isOpen) {
            setState(() {
              _isExpansionTileOpen = _isOpen;
            });
          },
          title: Text(
            'Story Highlights',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          subtitle: _isExpansionTileOpen
              ? Text(
                  'Keep Your Favorite Stories On Your Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 13.5,
                  ),
                )
              : null,
          trailing: Icon(
            _isExpansionTileOpen
                ? Icons.expand_less_outlined
                : Icons.expand_more_outlined,
            color: Colors.black,
          ),
          children: [
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, int index) {
                  return index != 0
                      ? Container(
                          width: 80,
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade500,
                          ),
                        )
                      : Container(
                          width: 80,
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade500,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'New',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 11,
                                ),
                              )
                            ],
                          ),
                        );
                },
              ),
            ),
          ],
        ),
        Divider(
          height: 3,
          color:
              _isExpansionTileOpen ? Colors.transparent : Colors.grey.shade600,
        )
      ],
    );
  }
}
