import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:exam_app/devices/phone/result_page.dart';
import 'package:exam_app/devices/web/result_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Timer extends StatefulWidget {
  final double width;
  final double height;
  const Timer({Key key, this.width, this.height}) : super(key: key);

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  final CountDownController _controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CircularCountDownTimer(
      autoStart: true,
      controller: _controller,
      width: widget.width,
      height: widget.height,
      duration: 1,
      fillColor: HexColor("#41337A"),
      ringColor: HexColor("#6EA4BF"),
      isReverse: true,
      onComplete: sayfaDegistir,
    );
  }

  void sayfaDegistir() {
    if (kIsWeb) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WebResultPage()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ResultPage()));
    }
  }
}
