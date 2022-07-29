import 'package:exam_app/devices/phone/home_page.dart';
import 'package:exam_app/devices/web/choose_exam.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Wrapper extends StatefulWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return ChooseExamPage();
    } else {
      return HomePage();
    }
  }
}
