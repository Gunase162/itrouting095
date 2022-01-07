import 'package:flutter/material.dart';
import 'package:itrouting/pages/thirdpages.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _stdID = TextEditingController();
  TextEditingController _studeName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Second Page'),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    id(),
                    Container(
                      width: 280,
                      child: SizedBox(
                        height: 16,
                      ),
                    ),
                    name(),
                  ],
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('กลับไปหน้าแรก'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                    var route = MaterialPageRoute(
                      builder: (context) => ThirdPage(
                        stdID: _stdID.text,
                        studeName: _studeName.text,
                      ),
                    );
                    Navigator.push(context, route);
                    }
                  },
                  child: Text('ยืนยันส่งค่าข้อมูล'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextFormField name() {
    return TextFormField(

      controller: _studeName,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please Enter studeName ';
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'ชื่อนิสิต :',
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.orange,
            width: 2.0,
          )),
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.orange,
            width: 2.0,
          ))),
    );
  }

  TextFormField id() {
    return TextFormField(
     controller: _stdID,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please Enter stdID ';
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'รหัสนิสิต :',
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.orange,
            width: 2.0,
          )),
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.orange,
            width: 2.0,
          ))),
    );
  }
}
