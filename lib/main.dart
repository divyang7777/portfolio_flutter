import 'package:flutter_web/material.dart';
import 'package:portfolio_flutter/mobile/mobileViews.dart';
import 'package:portfolio_flutter/web/webViews.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divyang | Developer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      // ),
      body:
          MediaQuery.of(context).size.width > 800 ? WebViews() : MobileViews(),
    );
  }

  // _webView() {
  //   return Container(
  //     color: Colors.red,
  //   );
  // }

  // _mobileView() {
  //   return Container(
  //     color: Colors.green,
  //   );
  // }

}
