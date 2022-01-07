import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  const ThirdPage({ Key? key, this.studeName, this.stdID }) : super(key: key);

  final String? studeName;
  final String? stdID;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('รหัสนิสิต :' + widget.stdID!,
            style: TextStyle(fontSize: 20),
            ),
            Text('ชื่อนิสิต :' + widget.studeName!,
            style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
        
    ); 

  }
}