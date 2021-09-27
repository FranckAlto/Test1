import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {

  List info=[];

  _initData(){
    DefaultAssetBundle.of(context).loadString("json/videoinfo.json").then((value) {
      info=json.decode(value);
    });
  }

  @override
  void initState(){
    super.initState();
    _initData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.AppColors.gradientFirst.withOpacity(0.8),
                color.AppColors.gradientSecond,

              ],
              begin: const FractionalOffset(0.0, 0.4),
              end: Alignment.topRight,
            )
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children : [
                    Row(
                      children: [
                        InkWell(
                          onTap:(){
                            Get.back();
                        },
                          child: Icon(Icons.arrow_back_ios_new, size: 20,
                            color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        const Icon(Icons.info_outline, size: 20,
                            color: Colors.white),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Legs toning",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColors.homePageContainerTextSmall
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColors.homePageContainerTextSmall
                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                color.AppColors.gradientFirst,
                                color.AppColors.gradientSecond,
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.timer,
                              size: 20,
                              color: Colors.white,),
                              SizedBox(width: 5,),
                              Text(
                                "68 min",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 200,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  color.AppColors.gradientFirst,
                                  color.AppColors.gradientSecond,
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.handyman_outlined,
                                size: 20,
                                color: Colors.white,),
                              SizedBox(width: 5,),
                              Text(
                                "Resistent band, kettebel",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                  ]

                ),
              ),
              Expanded(child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70)
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30, ),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Text(
                          "Circuit 1: Legs Tonig",
                          style: TextStyle(
                            fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: color.AppColors.homePageTitle
                          )

                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Icon(Icons.loop, size: 30, color: color.AppColors.homePagePlanColor,),
                            SizedBox(width: 10,),
                            Text(
                              "3 sers",
                              style: TextStyle(
                                fontSize: 15,
                                color: color.AppColors.homePageIcons,
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20,)
                      ],
                    )
                  ]
                ),
              ))
            ],
          ),
    ));
  }
}
