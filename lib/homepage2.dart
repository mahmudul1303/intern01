import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intern01/model.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  final reminder = Catagiries.generatedList();
  final task = Catagiries1.generatedList();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(15),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Habib 👋',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Let's explore your notes",
                  style: TextStyle(color: Colors.white70, fontSize: 14.0),
                ),
              ],
            ),
          ]),
        ),
        // leading: new Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: new Material(
        //       // shape: new CircleBorder(),
        //       ),
        // ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xff24966D)),
                  image: DecorationImage(
                      image: AssetImage("images/A.jpg"), fit: BoxFit.fill)),
            ),
          ),
        ],
        backgroundColor: Color(0xff09382a),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                // height: 2000,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 4, 49, 46),
                    Color.fromARGB(255, 28, 113, 68)
                  ], begin: Alignment.topRight, end: Alignment.centerLeft),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff24966D),
                            ),
                            color: Color.fromARGB(65, 213, 216, 214),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to TickTick Task",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 14),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 30,
                              width: 130,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color(0xff24966D),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                border:
                                    Border.all(width: 1, color: Colors.white),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                                  Row(
                                    children: [
                                      Text("Watch Video",
                                          textAlign: TextAlign.center)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 100,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reminder Task ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16.0,
                              ),
                            ))
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      reminder[index].pic,
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      reminder[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(reminder[index].date,
                                        style: TextStyle(fontSize: 13)),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 5,
                              ),
                          itemCount: reminder.length),
                    ),
                  ],
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All Task ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                    ),
                  ))
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              color: Color.fromARGB(255, 243, 238, 238),
              width: double.infinity,
              height: 60,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        padding: EdgeInsets.all(1),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Image.asset(
                              reminder[index].pic,
                              height: 80,
                              width: 80,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(reminder[index].name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(reminder[index].date),
                              ],
                            ),
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 5,
                      ),
                  itemCount: reminder.length),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back),
            label: "Record",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
