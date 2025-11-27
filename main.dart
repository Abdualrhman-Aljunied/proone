import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController field1 = TextEditingController();
  TextEditingController field2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الصفحة الأولى")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: field1,
              decoration: InputDecoration(
                labelText: "الحقل الأول",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            TextField(
              controller: field2,
              decoration: InputDecoration(
                labelText: "الحقل الثاني",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            /// زر نسخ النص من الحقل الأول للثاني
            ElevatedButton(
              onPressed: () {
                setState(() {
                  field2.text = field1.text;
                });
              },
              child: Text("نسخ النص للثاني"),
            ),

            SizedBox(height: 20),

            /// زر الانتقال إلى صفحة أخرى مع تمرير المتغيّر
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(
                        receivedText: field1.text,
                      ),
                    ));
              },
              child: Text("الانتقال للصفحة الثانية"),
            ),
          ],
        ),
      ),
    );
  }
}
