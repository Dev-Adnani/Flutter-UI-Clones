import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:tinder/app/constant/app.colors.dart';
import 'package:tinder/core/mock_data/account_json.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey.withOpacity(0.2),
      body: getProfileBody(),
    );
  }

  getProfileBody() {
    var size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        width: size.width,
        height: size.height * 0.6,
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: grey.withOpacity(0.1),
              spreadRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(account_json[0]['img']),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                account_json[0]['name'] + ", " + account_json[0]['age'],
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                  color: black.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.settings,
                          color: grey.withOpacity(0.5),
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                          color: grey.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 85,
                          width: 85,
                          child: Stack(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(colors: [
                                    primary_one,
                                    primary_two,
                                  ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: grey.withOpacity(0.1),
                                      spreadRadius: 10,
                                      blurRadius: 15,
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.camera_alt,
                                  color: white,
                                  size: 35,
                                ),
                              ),
                              Positioned(
                                top: 55,
                                left: 55,
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: white,
                                      width: 3,
                                    ),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: primary_one,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Add Media',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                            color: grey.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.edit,
                          color: grey.withOpacity(0.5),
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Edit Info',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                          color: grey.withOpacity(0.8),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
