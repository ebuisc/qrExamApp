import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../result_person.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
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
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: HexColor("#41337A"),
        title: const Text(
          "QR Exam",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: size.width * 0.6,
              height: size.height * 0.4,
              //color: Colors.red,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.12),
                        //color: Colors.amber,
                        width: size.width * 0.2,
                        height: size.height * 0.08,
                        child: Center(
                          child: Text(
                            person[1].name,
                            style: TextStyle(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: size.height * 0.15),
                        width: size.width * 0.2,
                        height: size.height * 0.2,
                        color: HexColor("#41337A"),
                        child: Center(
                          child: Text(
                            "2.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.1,
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
                        width: size.width * 0.2,
                        height: size.height * 0.08,
                        child: Center(
                          child: Text(
                            person.first.name,
                            style: TextStyle(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: size.height * 0.1),
                        width: size.width * 0.2,
                        height: size.height * 0.3,
                        color: HexColor("#41337A"),
                        child: Center(
                          child: Text(
                            "1.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.125,
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
                        width: size.width * 0.2,
                        height: size.height * 0.08,
                        child: Center(
                          child: Text(
                            person[2].name,
                            style: TextStyle(
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.only(top: size.height * 0.3),
                        width: size.width * 0.2,
                        height: size.height * 0.1,
                        color: HexColor("#41337A"),
                        child: Center(
                          child: Text(
                            "3.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.075,
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
                  width: size.width * 0.9,
                  height: size.height * 0.4,
                  child: ListView.builder(
                    itemCount: person.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: HexColor("#41337A"),
                        width: size.width * 0.9,
                        height: size.height * 0.06,
                        child: ListTile(
                          leading: Text(
                            person[index].rank,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.06,
                                fontWeight: FontWeight.bold),
                          ),
                          title: Text(
                            person[index].name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.05,
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
