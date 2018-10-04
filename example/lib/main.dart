import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:wifluttings/wifluttings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _wifiSettingsWasOpened = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    bool wifiSettingsWasOpened;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      wifiSettingsWasOpened = await Wifluttings.openNativeWifiSettings;
    } on PlatformException {
      wifiSettingsWasOpened = false;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _wifiSettingsWasOpened = wifiSettingsWasOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Wifluttings example app'),
        ),
        body: new Center(
          child: new Text('Wifi settings was Opened?: $_wifiSettingsWasOpened\n'),
        ),
      ),
    );
  }
}
