import 'package:exam_app/devices/web/home_page.dart';
import 'package:exam_app/result_person.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class WebResultPage extends StatefulWidget {
  const WebResultPage({Key key}) : super(key: key);

  @override
  State<WebResultPage> createState() => _WebResultPageState();
}

class _WebResultPageState extends State<WebResultPage> {
  List<Person> person = [
    Person("1.", "ebu"),
    Person("2.", "ömer"),
    Person("3.", "ali"),
    Person("4.", "yasin"),
    Person("5.", "mehmet"),
    Person("6.", "emin"),
    Person("7.", "veli"),
    Person("8.", "kemal"),
    Person("9.", "ahmet"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#3F1A89"),
      appBar: AppBar(
        leadingWidth: size.width * 0.15,
        leading: Center(
            child: Text(
          "QR Exam",
          style: TextStyle(
              fontSize: size.width * 0.034, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
        backgroundColor: HexColor("#391778"),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebHomePage()));
              },
              child: Text(
                "ÇIKIŞ YAP",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.02,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: size.width * 0.3,
              height: size.height * 0.4,
              //color: Colors.red,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.12),
                        //color: Colors.amber,
                        width: size.width * 0.1,
                        height: size.height * 0.08,
                        child: Center(
                          child: Text(
                            person[1].name,
                            style: TextStyle(
                                fontSize: size.width * 0.015,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: size.height * 0.15),
                        width: size.width * 0.1,
                        height: size.height * 0.2,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "2.",
                            style: TextStyle(
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.02),
                        //color: Colors.amber,
                        width: size.width * 0.1,
                        height: size.height * 0.08,
                        child: Center(
                          child: Text(
                            person.first.name,
                            style: TextStyle(
                                fontSize: size.width * 0.015,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: size.height * 0.1),
                        width: size.width * 0.1,
                        height: size.height * 0.3,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "1.",
                            style: TextStyle(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.22),
                        //color: Colors.amber,
                        width: size.width * 0.1,
                        height: size.height * 0.08,
                        child: Center(
                          child: Text(
                            person[2].name,
                            style: TextStyle(
                                fontSize: size.width * 0.015,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: size.height * 0.3),
                        width: size.width * 0.1,
                        height: size.height * 0.1,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "3.",
                            style: TextStyle(
                                fontSize: size.width * 0.015,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.3,
                  child: ListView.builder(
                    itemCount: person.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.white,
                        width: size.width * 0.9,
                        height: size.height * 0.06,
                        child: ListTile(
                          leading: Text(
                            person[index].rank,
                            style: TextStyle(
                                fontSize: size.width * 0.025,
                                fontWeight: FontWeight.bold),
                          ),
                          title: Text(
                            person[index].name,
                            style: TextStyle(
                                fontSize: size.width * 0.02,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
