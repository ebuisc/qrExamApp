import 'package:exam_app/devices/web/exam_page.dart';
import 'package:exam_app/result_person.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class WebHomePage extends StatefulWidget {
  const WebHomePage({Key key}) : super(key: key);

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
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
                      MaterialPageRoute(builder: (context) => WebExamPage()));
                },
                child: Text(
                  "BAŞLAT",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.02,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  //color: Colors.red,
                  width: size.width * 0.5,
                  height: size.height * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        //color: Colors.amber,
                        child: Text(
                          "QR Exam",
                          style: TextStyle(
                              fontSize: size.width * 0.07,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        //color: Colors.amber,
                        child: Text(
                          "Öğrenciler bekleniyor...",
                          style: TextStyle(
                              fontSize: size.width * 0.03, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: size.width * 0.4,
                            height: size.height * 0.5,
                            child: ListView.builder(
                              itemCount: person.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: Colors.white,
                                  width: size.width * 0.1,
                                  height: size.height * 0.1,
                                  child: ListTile(
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
                Column(
                  children: [
                    Container(
                      width: size.width * 0.2,
                      height: size.height * 0.2,
                      //color: Colors.yellow,
                      child: Center(
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                "Sınav PIN'i:",
                                style: TextStyle(
                                    fontSize: size.width * 0.03,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: size.height * 0.015),
                            Center(
                              child: Text(
                                "621281",
                                style: TextStyle(
                                    fontSize: size.width * 0.03,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      //color: Colors.yellow,
                      width: size.width * 0.5,
                      height: size.height * 0.6,
                      child: Container(
                        child: Image(
                          alignment: Alignment.center,
                          image: AssetImage("assets/websiteplanet-qr.png"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ));
  }

  Container studentName(Size size) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: size.width * 0.08,
        height: size.height * 0.08,
        child: Center(
            child: Text(
          "ebubekir",
          style: TextStyle(
              fontSize: size.width * 0.01,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        )));
  }
}
