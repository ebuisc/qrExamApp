// ignore_for_file: prefer_const_constructors
import 'package:exam_app/widgets/answer_box.dart';
import 'package:exam_app/widgets/question_box.dart';
import 'package:exam_app/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class ExamPage extends StatefulWidget {
  const ExamPage({Key key}) : super(key: key);

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: HexColor("#41337A"),
        title: Text(
          "Soru (1/10)",
          style: TextStyle(color: Colors.white, fontSize: size.width * 0.065),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: size.width * 0.05),
              child: Timer(
                width: size.width * 0.2,
                height: size.height * 0.08,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: size.width * 0.03),
              child: QuestionBox(
                question:
                    "2003 Yılında Euro Vizyon Şarkı Yarışmasında Ülkemizi Temsil Eden ve Yarışmada Birinci Gelen Sanatçımız Kimdir?",
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: size.width * 0.03),
              child: Button(
                width: size.width * 0.8,
                height: size.height * 0.07,
                radius: 10,
                fontSize: size.width * 0.035,
                text: "A:ATENA",
                onPressed: () {},
                color: HexColor("#6EA4BF"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: size.width * 0.02),
              child: Button(
                width: size.width * 0.8,
                height: size.height * 0.07,
                radius: 10,
                fontSize: size.width * 0.035,
                text: "B:ŞEBNEM PAKER",
                onPressed: () {},
                color: HexColor("#6EA4BF"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: size.width * 0.02),
              child: Button(
                width: size.width * 0.8,
                height: size.height * 0.07,
                radius: 10,
                fontSize: size.width * 0.035,
                text: "C:SERTAP ERENER",
                onPressed: () {},
                color: HexColor("#6EA4BF"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: size.width * 0.02),
              child: Button(
                width: size.width * 0.8,
                height: size.height * 0.07,
                radius: 10,
                fontSize: size.width * 0.035,
                text: "D:AJDA PEKKAN",
                onPressed: () {},
                color: HexColor("#6EA4BF"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: size.width * 0.02),
              child: Button(
                width: size.width * 0.8,
                height: size.height * 0.07,
                radius: 10,
                fontSize: size.width * 0.035,
                text: "E:DEMET AKALIN",
                onPressed: () {},
                color: HexColor("#6EA4BF"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
