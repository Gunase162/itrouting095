import 'package:flutter/material.dart';
import 'package:itrouting/pages/secondpage.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('First Page',
            style: TextStyle(fontSize: 20),
            ),
             Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ElevatedButton(onPressed: (){
              var route = MaterialPageRoute(
                builder: (context) => SecondPage()
              );
              Navigator.push(context, route);
            }, 
            child:  Text('ไปหน้าที่ 2'),
            ),
          ],
        ),
        ),
      
    );
  }
}