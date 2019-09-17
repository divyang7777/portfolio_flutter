import 'package:flutter_web/material.dart';

class WebViews extends StatefulWidget {
  @override
  _WebViewsState createState() => _WebViewsState();
}

class _WebViewsState extends State<WebViews> {
  int _stepNumber = 0;
  final _page = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 4,
            // color: Colors.green,
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                    // child: Text('data'),
                    child: Image.network(
                      'https://mario.nintendo.com/assets/img/home/intro/mario-pose2.png',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height / 3,
                    ),
                  ),
                ),
                Text(
                  'Divyang Mistry',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Container(
                  // color: Colors.pink,
                  child: Center(
                    child: Stepper(
                      steps: [
                        Step(
                          title: Text('Me'),
                          content: Container(),
                          isActive: _stepNumber == 0,
                        ),
                        Step(
                          title: Text('My Skills'),
                          content: Container(),
                          isActive: _stepNumber == 1,
                        ),
                        Step(
                          title: Text('My Work'),
                          content: Container(),
                          isActive: _stepNumber == 2,
                        ),
                        Step(
                          title: Text('My Hobbies'),
                          content: Container(),
                          isActive: _stepNumber == 3,
                        ),
                      ],
                      currentStep: _stepNumber,
                      onStepTapped: (index) {
                        setState(() {
                          _stepNumber = index;
                        });
                      },
                      controlsBuilder: (BuildContext context,
                              {VoidCallback onStepContinue,
                              VoidCallback onStepCancel}) =>
                          Container(),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: PageView(
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                physics: ScrollPhysics(),
                controller: _page,
                onPageChanged: (index) {
                  setState(() {
                    _stepNumber = index;
                  });
                },
                children: <Widget>[
                  Center(
                    child: Text(
                      'My Details !!!',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Center(
                    child: Text(
                      'My Skills !!!',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Center(
                    child: Text(
                      'My Work !!!',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Center(
                    child: Text(
                      'My Hobbies !!!',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
