import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class ChooseExamPage extends StatefulWidget {
  const ChooseExamPage({Key key}) : super(key: key);

  @override
  State<ChooseExamPage> createState() => _ChooseExamPageState();
}

class _ChooseExamPageState extends State<ChooseExamPage> {
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
      ),
      body: Column(children: [
        Container(
          child: Text(
            "Sınavlar",
            style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              width: size.width * 0.3,
              height: size.height * 0.3,
              child: Center(
                child: Text(
                  "Matematik",
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              width: size.width * 0.3,
              height: size.height * 0.3,
              child: Center(
                child: Text(
                  "Türkçe",
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              width: size.width * 0.3,
              height: size.height * 0.3,
              child: Center(
                child: Text(
                  "Tarih",
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              width: size.width * 0.3,
              height: size.height * 0.3,
              child: Center(
                child: Text(
                  "İngilizce",
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              width: size.width * 0.3,
              height: size.height * 0.3,
              child: Center(
                child: Text(
                  "Fizik",
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              width: size.width * 0.3,
              height: size.height * 0.3,
              child: Center(
                child: Text(
                  "Kimya",
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
