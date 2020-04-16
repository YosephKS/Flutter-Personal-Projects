import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text('Cat Apps'),
            backgroundColor: Colors.red,
          ),
          body: Column(
            children: <Widget>[
              Expanded(child: MyLayoutWidget(Colors.purple[900])),
              Expanded(child: MyLayoutWidget(Colors.red[900])),
              Expanded(child: MyLayoutWidget(Colors.blue[900])),
              Container(
                margin: EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:
                          _buildButtonColumn(Colors.green, Icons.call, 'CALL'),
                    ),
                    Expanded(
                      child: _buildButtonColumn(
                          Colors.blue, Icons.near_me, 'ROUTE'),
                    ),
                    Expanded(
                      child: _buildButtonColumn(
                          Colors.yellow, Icons.share, 'SHARE'),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

Widget MyLayoutWidget(Color color) {
  // This is for Padding Widget
  // return Padding(
  //   padding: EdgeInsets.all(8),
  //   child: Text('Hello World')
  // );

  // This is for Center Widget
  // return Center(
  //   child: Text(
  //     'Hello World',
  //     style: TextStyle(fontSize: 30),
  //   )
  // );

  // return Align(
  //   alignment: Alignment(1, .5),
  //   child: Text(
  //     'Hello World',
  //     style: TextStyle(fontSize: 30)
  //   ),
  // );

  // return Container(
  //   margin: EdgeInsets.all(30),
  //   padding: EdgeInsets.all(10),
  //   alignment: Alignment.topCenter,
  //   width: 200,
  //   height: 100,
  //   decoration: BoxDecoration(
  //     color: Colors.green,
  //     border: Border.all()
  //   ),
  //   child: Text('Hello',
  //     style: TextStyle(
  //       fontSize: 30,
  //       color: Colors.white,
  //     )
  //   ),
  // );

  // return Row(
  //   children: [
  //     Expanded(
  //       child: Container(color: Colors.green,),
  //       flex: 7,
  //     ),
  //     Expanded(
  //       flex: 3,
  //       child: Container(color: Colors.yellow)
  //       ),
  //   ],
  // );

  // return Stack(
  //   alignment: Alignment.bottomRight,
  //   children: <Widget>[
  //     Image.asset('images/cat.jpg'),
  //     Padding(
  //       padding: EdgeInsets.all(16.0),
  //       child: Text(
  //         'Meowwww',
  //         style: TextStyle(
  //           fontSize: 30,
  //           color: Colors.white
  //         ),
  //       )
  //     )
  //   ],
  // );

  return Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
        color: color,
        border: Border.all(color: color),
        borderRadius: BorderRadius.all(Radius.circular(3.0))),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.favorite,
                color: Colors.green,
              ),
            ),
            Text(
              'Beams',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 0,
          ),
          child: Text(
            'Send programmable push notifications to iOS and Android devices with delivery and open rate tracking built in.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Row(
          children: [
            Text(
              'EXPLORE BEAMS',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
