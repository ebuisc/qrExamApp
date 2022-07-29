import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exam_app/devices/phone/add_name.dart';
import 'package:exam_app/mobile_scanner.dart';
import 'package:exam_app/widgets/answer_box.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Menu extends StatefulWidget {
  const Menu({Key key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: HexColor("#41337A"),
      ),
      width: size.width * 0.65,
      height: size.height * 0.428,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: size.width * 0.04),
            child: Image(
              height: size.height * 0.12,
              image: AssetImage("assets/qrWhite.png.png"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(size.width * 0.02),
            child: Button(
              onPressed: () {
                FirebaseFirestore firestore = FirebaseFirestore.instance;
                CollectionReference testCollectionRef = FirebaseFirestore.instance.collection('testCollection');
                testCollectionRef.add({'test':'1'});
                //Navigator.push(
                   //context,
                    //MaterialPageRoute(
                        //builder: (context) => MobileScannerPage()));
              },
              text: "QR Kodu okut",
              color: HexColor("#6EA4BF"),
              width: size.width * 0.3,
              height: size.height * 0.06,
              radius: 30,
              fontSize: size.width * 0.037,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: size.width * 0.02),
            child: Text("Ya da",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.04)),
          ),
          Container(
            padding: EdgeInsets.only(bottom: size.width * 0.025),
            child: SizedBox(
              width: size.width * 0.4,
              height: size.height * 0.07,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)),
                    filled: true,
                    hintStyle: TextStyle(
                        color: Colors.grey, fontSize: size.width * 0.035),
                    hintText: "Sınav PIN'i gir.",
                    fillColor: Colors.white),
              ),
            ),
          ),
          Button(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddName()));
            },
            text: "İleri",
            color: HexColor("#6EA4BF"),
            width: size.width * 0.3,
            height: size.height * 0.06,
            radius: 30,
            fontSize: size.width * 0.037,
          ),
        ],
      ),
    );
  }
}
