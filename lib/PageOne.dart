import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List listOfAvatar = [
    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
    "https://media.istockphoto.com/id/1351147752/photo/studio-portrait-of-attractive-20-year-old-bearded-man.jpg?b=1&s=170667a&w=0&k=20&c=N-Uwgbn8qhGypoXFB6keEEC3mW0qhNynAqBqd8oNJw0=",
    "https://image.shutterstock.com/image-photo/stock-photo-head-shot-young-attractive-businessman-in-glasses-standing-in-modern-office-pose-for-camera-250nw-1854697390.jpg"
  ];

  List listOfName = [
    "Aziz",
    "Laziz",
    "Ali",
  ];

  List listOfSurename = [
    "Abdunazarov",
    "Beknazarov",
    "ISomiddinov"
  ];

  List listOfJobs = [
    "🎨 Arts & Entertainment",
    "📢 Community & Government",
    "🍟 Food",
  ];

  List listOfTitle = [
    "Video Games: The most interesting video games",
    "Movies: Famous movies",
    "Cartoon: Tom & Jerry"
  ];

  List listOfText = [
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some...",
    "There some comediand movies with famous actors who is me and you and also lorem ipcjb  helo everyone not you me ....",
    "Lorem imput sit amet dolcha honge sole bast fi ana who is me and you row have suffeered in some..."
  ];

  List listOfPrice = [
    "from \$2.59",
    "from \$4.23",
    "from \$1.12"
  ];

  List listOfButton = [
    "DETAILS",
    "DATA",
    "MORE..."
  ];

  List listOfImage = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa9iUc3i-F37JgIDwyGsuP_EMul33p3GMk53lQ22WARg&s",
    "https://media.istockphoto.com/id/1349363968/photo/giraffe-riding-an-elephant-on-field-friendship-and-cooperation-concept.jpg?b=1&s=170667a&w=0&k=20&c=f5K4jUJ3fT55j7EV_wAcu3yjWHP3xPJ0gg9SPo9krEE=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRITHJpubx6EYG0QRl6L9RMVzFVxHgVWjICzQFYTy3e7U95ppJXFJ_scQgWeMxX6H--N5w&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi, Alice Smith! 👋", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                        "Let’s see the updates, new interactions of followed creators on your feed.",
                    style: TextStyle(
                      color: Color(0xff62687B),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.6
                    )
                      ,)
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: listOfAvatar.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: EdgeInsets.all(16),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          listOfAvatar[index],),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 10, bottom: 5),child: Text(listOfName[index])),
                                    Padding(padding: EdgeInsets.only(left: 10),child: Text(listOfSurename[index])),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 200,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                      image: NetworkImage(listOfImage[index]),
                                      fit: BoxFit.cover)),
                            ),
                            Wrap(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                    padding: EdgeInsets.all(3),
                                    child: Text(listOfJobs[index]),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, left: 10),
                                child: Text(listOfTitle[index])
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Text(listOfText[index], style: TextStyle(fontSize: 12, height: 1.4),),
                                  height: 38,
                                  margin: EdgeInsets.only(left: 10, top: 8),
                                  width: 233,
                                ),
                              ],),
                            Row(
                              children: [
                                Container(
                                  child: Text(listOfPrice[index], style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                                  margin: EdgeInsets.only(top: 8, left: 10),
                                ),
                                Container(
                                  height: 39,
                                  width: 106,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Center(child: Text(listOfButton[index])),
                                  margin: EdgeInsets.only(left: 170),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
