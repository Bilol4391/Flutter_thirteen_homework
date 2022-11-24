import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

Map <String, List> data = {
  "Image":
      [
        "https://media.istockphoto.com/id/1365370917/photo/giraffe-sitting-next-to-an-elephant-on-wooden-deck.jpg?b=1&s=170667a&w=0&k=20&c=XpnkrIYF9u4oHV7wsM2-tGdDokqj_4fu2jAqqUP6Jw8=",
        "https://gannett-cdn.com/presto/2021/03/22/NRCD/9d9dd9e4-e84a-402e-ba8f-daa659e6e6c5-PhotoWord_003.JPG",
      ],
  "Avatar":
      [
        "https://gannett-cdn.com/presto/2021/03/22/NRCD/9d9dd9e4-e84a-402e-ba8f-daa659e6e6c5-PhotoWord_003.JPG",
        "https://media.istockphoto.com/id/1365370917/photo/giraffe-sitting-next-to-an-elephant-on-wooden-deck.jpg?b=1&s=170667a&w=0&k=20&c=XpnkrIYF9u4oHV7wsM2-tGdDokqj_4fu2jAqqUP6Jw8=",
      ],
};

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  color: Color(0xfff4f5f7),
                  height: 130,
                  width: 430,
                  child: Row(
                    children: [
                      Container(
                        color: Color(0xffF4F5F7),
                        margin: EdgeInsets.only(top: 70, left: 20),
                        child: Image.asset("assets/Logo.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 70, left: 190),
                        height: 25.5,
                        width: 25.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: Colors.black)
                        ),
                        child: Icon(Icons.add),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 70, left: 25),
                        height: 25.5,
                        width: 25.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: Colors.black),
                            image: DecorationImage(image: AssetImage("assets/Stroke 1.png"))
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 430,
              color: Color(0xfff4f5f7),
              padding: EdgeInsets.only(bottom: 0),
              child: Column(
                children: [
                  Container(
                    child: Image.asset("assets/Vector 1.png", fit: BoxFit.cover,),
                    width: 32,
                    height: 6,
                    margin: EdgeInsets.only(left: 0,top: 15),
                  ),
                  Container(
                    width: 109,
                    height: 16,
                    color: Color(0xffF4F5F7),
                    margin: EdgeInsets.only(left: 20, top: 6),
                    child: Text("Show stories", style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Color(0xffC1C7D0),
                    ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 742,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 48,
                                width: 58,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: NetworkImage(data["Avatar"]![index]),fit: BoxFit.cover)
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 3, left: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text("Christina Smith", style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Color(0xff172B4D),
                                            ),),
                                          ),
                                          Container(
                                            child: Image.asset("assets/Exclude.png",),
                                            margin: EdgeInsets.only(left: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text("2 hours ago", style: TextStyle(
                                                color: Color(0xff7C859F),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.8
                                            ),),
                                            margin: EdgeInsets.only(left: 10),
                                          ),
                                          Container(
                                            child: Icon(Icons.more_horiz, size: 30,),
                                            margin: EdgeInsets.only(left: 220),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Text("lanasmith It is a long and areel any established fact that a reader will be distracted by the readable content of a page when looking at its layout. There are many variation... more",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xff172B4D)
                            ),),
                            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage(data["Image"]![index]),fit: BoxFit.cover),
                            ),
                            height: 260,
                            width: 430,
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Image.asset("assets/Frame 33781.png", fit: BoxFit.cover,),
                                width: 430,
                              )
                            ],
                          ),
                          Container(
                            child: Text("View all comments (32)", style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),),
                            margin: EdgeInsets.only(top: 15, left: 20, bottom: 10),
                          ),
                          Container(
                            child: Divider(
                              color: Colors.grey.withOpacity(0.4), thickness: 2,
                            ),
                            width: 405,
                            margin: EdgeInsets.only(left: 10, bottom: 10),
                          )
                        ],
                      ),
                    ],
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
