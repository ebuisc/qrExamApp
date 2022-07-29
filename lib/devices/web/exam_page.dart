import 'package:exam_app/widgets/answer_box.dart';
import 'package:exam_app/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WebExamPage extends StatefulWidget {
  const WebExamPage({Key key}) : super(key: key);

  @override
  State<WebExamPage> createState() => _WebExamPageState();
}

class _WebExamPageState extends State<WebExamPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: HexColor("#391778"),
        body: Center(
          child: Column(
            children: [
              Container(
                child: Text(
                  "QR Exam",
                  style: TextStyle(
                      fontSize: size.width * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: [
                  SizedBox(width: size.width * 0.1),
                  Timer(
                    width: size.width * 0.1,
                    height: size.height * 0.15,
                  ),
                  SizedBox(width: size.width * 0.025),
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "Geliştirdiğiniz mobil uygulamanın gereksinimlere cevap verebilmesi için aşağıdaki ölçütlerden hangisine uygun olmasına gerek yoktur?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size.width * 0.015,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * 0.06),
                  Column(
                    children: [
                      Button(
                        width: size.width * 0.1,
                        height: size.height * 0.05,
                        radius: 5,
                        fontSize: size.width * 0.01,
                        text: "İleri",
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.black,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        "Soru" + "(1,11)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.02,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    width: size.width * 0.475,
                    height: size.height * 0.15,
                    radius: 0,
                    fontSize: size.width * 0.012,
                    text: "A) Performans",
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  SizedBox(width: size.width * 0.009),
                  Button(
                    width: size.width * 0.475,
                    height: size.height * 0.15,
                    radius: 0,
                    fontSize: size.width * 0.012,
                    text: "B) Güvenlik",
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    width: size.width * 0.475,
                    height: size.height * 0.15,
                    radius: 0,
                    fontSize: size.width * 0.012,
                    text: "C) Karışık arayüzler",
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  SizedBox(width: size.width * 0.009),
                  Button(
                      width: size.width * 0.475,
                      height: size.height * 0.15,
                      radius: 0,
                      fontSize: size.width * 0.012,
                      text: "D) Stabilite",
                      onPressed: () {},
                      color: Colors.white),
                ],
              ),
              SizedBox(height: size.height * 0.015),
              Button(
                  width: size.width * 0.45,
                  height: size.height * 0.15,
                  radius: 0,
                  fontSize: size.width * 0.012,
                  text: "E) Anlaşılabilirlik",
                  onPressed: () {},
                  color: Colors.white),
            ],
          ),
        ));
  }
}
