import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileScannerPage extends StatefulWidget {
  const MobileScannerPage({Key key}) : super(key: key);

  @override
  State<MobileScannerPage> createState() => _MobileScannerPageState();
}

class _MobileScannerPageState extends State<MobileScannerPage> {
  MobileScannerController cameraController = MobileScannerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#41337A"),
          title: Text("QR Code"),
        ),
        body: MobileScanner(
          controller: cameraController,
          allowDuplicates: false,
          onDetect: foundCode,
        ));
  }

  void foundCode(Barcode barcode, MobileScannerArguments arguments) {
    dynamic code = barcode.rawValue;
    print(code.toString());
    _launchUrl(code);
  }

  Future<void> _launchUrl(URL) async {
    final Uri _url = Uri.parse(URL);

    if (!await launchUrl(_url)) {
      throw 'Could not launch $URL';
    }
  }
}
